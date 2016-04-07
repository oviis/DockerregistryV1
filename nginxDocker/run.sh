#!/bin/bash
cp /usr/src/config/registry.conf /tmp/docker-registry.conf
bugsbunny=$(sed "s@<docker_registry_ip>@${REGISTRY_PORT_5000_TCP_ADDR}:${REGISTRY_PORT_5000_TCP_PORT}@g;s@<public_ip>@${PUBLIC_IP_ADDR}@g;s@<docker_frontend_ip>@${FRONTEND_PORT_80_TCP_ADDR}:${FRONTEND_PORT_80_TCP_PORT}@g;s@<frontend_ssl_port>@${FRONTEND_ENV_SSL_PORT}@g;s@<registry_ssl_port>@${PROXY_SSL_PORT}@g" /tmp/docker-registry.conf)
echo "$bugsbunny" > /etc/nginx/conf.d/docker-registry.conf
cat /usr/src/config/htpasswd.conf > /etc/nginx/htpasswd
nginx -g 'daemon off;'