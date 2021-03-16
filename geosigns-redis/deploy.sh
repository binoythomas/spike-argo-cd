#! /bin/bash
set -e

REDIS_DIR=$1

# substitute placeholders in patches
sed -i '' "s|HOST_PATH|${PWD}/redis-data|g" "${REDIS_DIR}/set_host_path.yaml"
