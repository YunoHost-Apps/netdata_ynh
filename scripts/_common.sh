#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
#REMOVEME? pkg_dependencies="zlib1g-dev uuid-dev libmnl-dev gcc make git autoconf autoconf-archive autogen automake pkg-config curl jq nodejs python3-mysqldb libipmimonitoring-dev acl python3-pymongo libuv1-dev liblz4-dev libjudy-dev libssl-dev cmake"

#=================================================
# PERSONAL HELPERS
#=================================================

# Configure NetData
configure_netdata() {

  # Set server as registry serveur
  sed -i "/^\[registry\]$/,/^\[/ {
    s/# enabled = no/enabled = yes/
    s@# registry to announce = https://registry.my-netdata.io@registry to announce = https://$domain$path@
  }" $install_dir/etc/netdata/netdata.conf

  #  Opt-out from sending anonymous statistics
  # (see https://docs.netdata.cloud/docs/anonymous-statistics/#opt-out)
  touch $install_dir/etc/netdata/.opt-out-from-anonymous-statistics

  # Add a web_log entry for every YunoHost domain
  netdata_add_yunohost_web_logs

  # If PostgreSQL is installed, add a PostgreSQL entry using instance password
  netdata_add_yunohost_postgres_configuration

  # Create netdata user to monitor MySQL (if needed)
  is_mysql_user_existing=$(ynh_mysql_execute_as_root --sql="select user from mysql.user where user = 'netdata';")
  if [ -z "$is_mysql_user_existing" ] ; then
    ynh_mysql_execute_as_root --sql="create user 'netdata'@'localhost';
    grant usage on *.* to 'netdata'@'localhost' with grant option;
    flush privileges;"
  fi

  if type "setfacl" > /dev/null ; then
    # Give dovecot privileges to netdata user to monitor Dovecot
    # Need dovecot 2.2.16+
    if [ -f /var/run/dovecot/stats ] ; then
      # Until Debian Strech
      setfacl -m u:netdata:rw /var/run/dovecot/stats
    fi
    if [ -f /var/run/dovecot/old-stats ] ; then
      # From Debian Buster
      setfacl -m u:netdata:rw /var/run/dovecot/old-stats
    fi
  fi

  # Add netdata to the adm group to access web logs
  usermod -a -G adm netdata
}

# Add a web_log entry for every YunoHost domain
netdata_add_yunohost_web_logs () {
  local web_log_file="$install_dir/etc/netdata/go.d/web_log.conf"
  if [ ! -f $web_log_file ] ; then
    cp $install_dir/etc/netdata/orig/go.d/web_log.conf $web_log_file
  fi
  if [ -z "$(grep "YUNOHOST" $web_log_file)" ] ; then
    echo "# ------------YUNOHOST DOMAINS---------------" >> $web_log_file
    local domain
    local domain_label
    for domain in $(yunohost domain list --output-as plain); do
      domain_label=${domain//\./_} # Replace "." by "_" for the domain label
      cat >> $web_log_file <<EOF
  - ${domain_label}_log:
    name: '${domain_label}'
    path: '/var/log/nginx/$domain-access.log'

EOF
    done
  fi
  chgrp netdata $web_log_file
  # Manage upgrade case from python to go plugin
  if [ -f "$install_dir/etc/netdata/python.d/web_log.conf" ] ; then
#REMOVEME?     ynh_secure_remove --file="$install_dir/etc/netdata/python.d/web_log.conf"
  fi
}

# If PostgreSQL is installed, add a PostgreSQL entry using instance password
netdata_add_yunohost_postgres_configuration () {
  local postgres_file="$install_dir/etc/netdata/go.d/postgres.conf"
  if [ ! -f $postgres_file ] ; then
    cp $install_dir/etc/netdata/orig/go.d/postgres.conf $postgres_file
  fi
  if [ -f /etc/yunohost/psql ] && [ -z "$(grep "YUNOHOST" $postgres_file)" ] ; then
     cat >> $postgres_file <<EOF
# ------------ YUNOHOST ---------------
  - name: local
    dsn: 'postgres://postgres:$(cat /etc/yunohost/psql)@localhost:5432/postgres'
EOF
  fi
  chgrp netdata $postgres_file
    # Manage upgrade case from python to go plugin
  if [ -f "$install_dir/etc/netdata/python.d/postgres.conf" ] ; then
#REMOVEME?     ynh_secure_remove --file="$install_dir/etc/netdata/python.d/postgres.conf"
  fi
}
