FROM stefanprodan/caddy:latest

COPY conf/Caddyfile /etc/caddy/Caddyfile
COPY conf/docker-entrypoint.sh /etc/caddy/docker-entrypoint.sh

ENV CADDY_ADMIN_USER=admin
ENV CADDY_ADMIN_PASSWORD=admin
ENV PROMETHEUS=localhost

RUN chmod 755 /etc/caddy/docker-entrypoint.sh

CMD ["/etc/caddy/docker-entrypoint.sh"]