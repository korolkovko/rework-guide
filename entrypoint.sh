#!/bin/sh
set -e

# Always sync pictures from build into volume
if [ -d /seed-pictures ]; then
  mkdir -p /data/pictures
  cp -f /seed-pictures/* /data/pictures/
  echo "Synced pictures into volume"
fi

exec nginx -g 'daemon off;'
