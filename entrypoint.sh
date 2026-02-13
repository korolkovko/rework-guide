#!/bin/sh
set -e

# Seed pictures into volume on first run
if [ -d /seed-pictures ] && [ -z "$(ls -A /data/pictures 2>/dev/null)" ]; then
  mkdir -p /data/pictures
  cp /seed-pictures/* /data/pictures/
  echo "Seeded pictures into volume"
fi

exec nginx -g 'daemon off;'
