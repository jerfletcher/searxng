FROM docker.io/searxng/searxng:latest

# Copy limiter.toml to disable rate limiting
COPY limiter.toml /etc/searxng/limiter.toml

# Also patch settings.yml after entrypoint runs
COPY entrypoint.sh /docker-entrypoint-init.d/entrypoint.sh
RUN chmod +x /docker-entrypoint-init.d/entrypoint.sh
