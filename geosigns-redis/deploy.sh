#! /bin/bash
set -e

REDIS_DIR=$1

# substitute placeholders in patches
machine_name="`uname -s | awk '{print $1}'`"
if [ $machine_name != "Darwin" ]; then
  sed -i "s|HOST_PATH|${HOME}/redis-data|g" "${REDIS_DIR}/set_host_path.yaml"
else
  sed -i '' "s|HOST_PATH|${HOME}/redis-data|g" "${REDIS_DIR}/set_host_path.yaml"
fi