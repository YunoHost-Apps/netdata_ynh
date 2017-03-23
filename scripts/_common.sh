#!/bin/bash
#
# Common variables
#

# Application version
VERSION="1.6.0"

# Remote URL to fetch application source archive
APPLICATION_SOURCE_URL="https://github.com/firehol/netdata/releases/download/v${VERSION}/netdata-${VERSION}.tar.gz"

# Package name for NetData dependencies
DEPS_PKG_NAME="netdata-deps"

#
# Common helpers
#

# Download and extract application sources to the given directory
# usage: extract_application_to DESTDIR
extract_application() {
  TMPDIR=$(mktemp -d)
  chmod 755 $TMPDIR
  archive="${TMPDIR}/application.tar.gz"
  wget -q -O "$archive" "$APPLICATION_SOURCE_URL" \
    || ynh_die "Unable to download application archive"
  tar xf "$archive" -C "$TMPDIR" --strip-components 1 \
    || ynh_die "Unable to extract application archive"
  rm "$archive"
  echo "$TMPDIR"
}

# Fix path if needed
# usage: fix_patch PATH_TO_FIX
fix_path() {
  local path=$1
  if [ "${path:0:1}" != "/" ] && [ ${#path} -gt 0 ]; then
         path="/$path"
  fi
  if [ "${path:${#path}-1}" == "/" ] && [ ${#path} -gt 1 ]; then
         path="${path:0:${#path}-1}"
  fi
  echo "$path"
}