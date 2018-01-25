FROM stefanprodan/caddy:latest

COPY conf /etc/caddy/

ENTRYPOINT  [ "/etc/caddy/docker-entrypoint.sh" ]
CMD ["caddy", "-agree", "--conf", "/etc/caddy/Caddyfile"]