#!/bin/bash
TUNNEL_NAME="${VSCODE_TUNNEL_NAME:-cranl-debian}"

echo "=========================================================="
echo " Starting VS Code Remote Tunnel: $TUNNEL_NAME"
echo "=========================================================="
echo "Please follow the instructions below to authenticate with"
echo "your GitHub or Microsoft account at https://github.com/login/device"
echo "=========================================================="

exec /usr/local/bin/code tunnel --accept-server-license-terms --name "$TUNNEL_NAME"
