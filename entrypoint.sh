#!/bin/bash
set -e

if [ -f /tmp/artalk.yml ]; then
  cp /tmp/artalk.yml /data/artalk.yml
  echo "config copied successfully"
else
  echo "config does not exist"
fi

/entrypoint.sh server --host 0.0.0.0 --port 23366
