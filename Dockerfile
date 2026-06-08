FROM docker.io/searxng/searxng:latest

# Disable limiter and enable JSON API format
COPY settings.yml /etc/searxng/settings.yml
