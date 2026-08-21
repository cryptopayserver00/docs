#!/usr/bin/env bash
set -euo pipefail

APP_DIR="/app/cryptopayserver-docs"
APP_DIR_DOCS="/app/cryptopayserver-docs/docs"
SERVICE_NAME="cryptopayserverdocs"

echo "==> Deploy started at $(date)"
cd "$APP_DIR"

echo "==> git pull"
git pull

echo "==> remove export zip file"
rm -f export.zip

echo "==> mintlify export"
NODE_OPTIONS="--max-old-space-size=2048" mintlify export

echo "==> unzip docs"
unzip export.zip -d "$APP_DIR_DOCS"

echo "==> restart service: $SERVICE_NAME"
sudo systemctl restart "$SERVICE_NAME"

echo "==> service status"
sudo systemctl --no-pager --full status "$SERVICE_NAME" || true

echo "==> Deploy finished at $(date)"