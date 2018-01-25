#!/bin/sh -e

cat /etc/caddy/Caddyfile |\
    sed "s@#CADDY_ADMIN_USER#@$CADDY_ADMIN_USER@g" |\
    sed "s@#CADDY_ADMIN_PASSWORD#@$CADDY_ADMIN_PASSWORD@g" > /tmp/Caddyfile

mv /tmp/Caddyfile /etc/caddy/Caddyfile

set -- /sbin/tini -- "$@"

exec "$@"