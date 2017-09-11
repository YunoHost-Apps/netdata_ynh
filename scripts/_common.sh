#!/bin/bash
#
# Common variables
#

pkg_dependencies="zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl jq nodejs python-mysqldb libipmimonitoring-dev"

# Configure NetData
configure_netdata() {
  # Create netdata user to monitor MySQL (if needed)
  is_mysql_user_existing=$(ynh_mysql_execute_as_root "select user from mysql.user where user = 'netdata';")
  if [ -z "$is_mysql_user_existing" ] ; then
    ynh_mysql_execute_as_root "create user 'netdata'@'localhost';
    grant usage on *.* to 'netdata'@'localhost' with grant option;
    flush privileges;"
  fi

  # Give dovecot privileges to netdata user to monitor Dovecot
  # Need dovecot 2.2.16+
  setfacl -m u:netdata:rw /var/run/dovecot/stats

  # Add netdata to the adm group to access web logs
  usermod -a -G adm netdata

  # Declare service for YunoHost monitoring
  yunohost service add netdata --log "/opt/netdata/var/log/netdata/error.log" "/opt/netdata/var/log/netdata/access.log" "/opt/netdata/var/log/netdata/debug.log"

  # Restart NetData
  systemctl restart netdata

  # Store the uninstaller for the removal script
  mv ./netdata-uninstaller.sh /opt/netdata/etc/netdata
}

# Add a web_log entry for every YunoHost domain
netdata_add_yunohost_web_logs () {
  echo "# ------------YUNOHOST DOMAINS---------------" >> /opt/netdata/etc/netdata/python.d/web_log.conf
  for domain in $(yunohost domain list --output-as plain); do
  domain_label=${domain//\./_} # Replace "." by "_" for the domain label
  cat >> /opt/netdata/etc/netdata/python.d/web_log.conf <<EOF
${domain_label}_log:
  name: '${domain_label}'
  path: '/var/log/nginx/$domain-access.log'

EOF
done
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
