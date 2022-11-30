#!/bin/sh
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <notebook_image> <database_image>"
    exit 1
fi
NOTEBOOK_IMAGE=$1
DATABASE_IMAGE=$2
export NOTEBOOK_IMAGE DATABASE_IMAGE
echo "🔨 Creating docker-compose.yml for notebook '$NOTEBOOK_IMAGE' with database '$DATABASE_IMAGE'."
cat "$(dirname "$0")/compose-template.yml" | envsubst > "$(dirname "$0")/docker-compose.yml"