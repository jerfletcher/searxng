FROM docker.io/searxng/searxng:latest

COPY limiter.toml /etc/searxng/limiter.toml
