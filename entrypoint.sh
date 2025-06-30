#!/bin/sh
ENV_PATH="/usr/share/nginx/html"

# Apply env vars to env.json template
envsubst < $ENV_PATH/env.template.json > $ENV_PATH/env.json

# Log config
echo RUNNING WITH CONFIG:
cat $ENV_PATH/env.json

# Run default nginx entrypoint
exec /docker-entrypoint.sh nginx -g "daemon off;"
