#!/bin/sh -e

cat /etc/caddy/Caddyfile |\
    sed "s@#CADDY_ADMIN_USER#@$CADDY_ADMIN_USER@g" |\
    sed "s@#CADDY_ADMIN_PASSWORD#@$CADDY_ADMIN_PASSWORD@g" |\
    sed "s@#PROMETHEUS#@$PROMETHEUS@g" > /tmp/Caddyfile

mv /tmp/Caddyfile /etc/caddy/Caddyfile

caddy -agree --conf /etc/caddy/Caddyfile