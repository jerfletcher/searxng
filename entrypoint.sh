#!/bin/sh
# Patch the limiter setting after SearXNG entrypoint generates settings.yml
# This runs AFTER the default entrypoint completes its setup
if [ -f /etc/searxng/settings.yml ]; then
  sed -i 's/limiter: true/limiter: false/' /etc/searxng/settings.yml
  # If limiter key doesn't exist, add it under server section
  if ! grep -q 'limiter:' /etc/searxng/settings.yml; then
    sed -i '/^server:/a\  limiter: false' /etc/searxng/settings.yml
  fi
fi
