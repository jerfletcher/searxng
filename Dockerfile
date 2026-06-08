FROM docker.io/searxng/searxng:latest

COPY entrypoint.sh /docker-entrypoint-init.d/entrypoint.sh
RUN chmod +x /docker-entrypoint-init.d/entrypoint.sh
