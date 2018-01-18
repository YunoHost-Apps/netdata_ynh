#!/bin/bash
#
# Common variables
#

pkg_dependencies="zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl jq nodejs python-mysqldb libipmimonitoring-dev acl python-psycopg2"

# Configure NetData
configure_netdata() {

  # Add a web_log entry for every YunoHost domain
  netdata_add_yunohost_web_logs
  
  # If PostgreSQL is installed, add a PostgreSQL entry using instance password
  netdata_add_yunohost_postgres_configuration

  # Create netdata user to monitor MySQL (if needed)
  is_mysql_user_existing=$(ynh_mysql_execute_as_root "select user from mysql.user where user = 'netdata';")
  if [ -z "$is_mysql_user_existing" ] ; then
    ynh_mysql_execute_as_root "create user 'netdata'@'localhost';
    grant usage on *.* to 'netdata'@'localhost' with grant option;
    flush privileges;"
  fi

  if type "setfacl" > /dev/null ; then
    # Give dovecot privileges to netdata user to monitor Dovecot
    # Need dovecot 2.2.16+
    setfacl -m u:netdata:rw /var/run/dovecot/stats
  fi
  
  # Add netdata to the adm group to access web logs
  usermod -a -G adm netdata

  # Declare service for YunoHost monitoring
  yunohost service add netdata --log "/opt/netdata/var/log/netdata/error.log" "/opt/netdata/var/log/netdata/access.log" "/opt/netdata/var/log/netdata/debug.log"

  # Restart NetData
  systemctl restart netdata
}

# Add a web_log entry for every YunoHost domain
netdata_add_yunohost_web_logs () {
  local web_log_file="/opt/netdata/etc/netdata/python.d/web_log.conf"
  if [ -z "$(grep "YUNOHOST" $web_log_file)" ] ; then
    echo "# ------------YUNOHOST DOMAINS---------------" >> $web_log_file
    for domain in $(yunohost domain list --output-as plain); do
      domain_label=${domain//\./_} # Replace "." by "_" for the domain label
      cat >> $web_log_file <<EOF
${domain_label}_log:
  name: '${domain_label}'
  path: '/var/log/nginx/$domain-access.log'

EOF
    done
  fi
}

# If PostgreSQL is installed, add a PostgreSQL entry using instance password
netdata_add_yunohost_postgres_configuration () {
  if [ -f /etc/yunohost/psql ] && [ -z "$(grep "yunohost:" /opt/netdata/etc/netdata/python.d/postgres.conf)" ] ; then
     cat >> /opt/netdata/etc/netdata/python.d/postgres.conf <<EOF
yunohost:
    name     : 'local'
    database : 'postgres'
    user     : 'postgres'
    password : '$(cat /etc/yunohost/psql)'
    host     : 'localhost'
    port     : 5432
EOF
  fi
}

# ============= FUTURE YUNOHOST HELPER =============
# Delete a file checksum from the app settings
#
# $app should be defined when calling this helper
#
# usage: ynh_remove_file_checksum file
# | arg: file - The file for which the checksum will be deleted
ynh_delete_file_checksum () {
	local checksum_setting_name=checksum_${1//[\/ ]/_}	# Replace all '/' and ' ' by '_'
	ynh_app_setting_delete $app $checksum_setting_name
}
