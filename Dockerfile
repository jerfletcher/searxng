FROM docker.io/searxng/searxng:latest

# Override limiter settings
COPY searxng-settings.yml /etc/searxng/settings.yml
