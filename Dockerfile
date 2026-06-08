FROM docker.io/searxng/searxng:latest

# Completely disable limiter
COPY settings.yml /etc/searxng/settings.yml
