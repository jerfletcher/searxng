FROM docker.io/searxng/searxng:latest

COPY limiter.toml /etc/searxng/limiter.toml
RUN chmod 644 /etc/searxng/limiter.toml
