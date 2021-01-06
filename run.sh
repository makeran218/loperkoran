#!/bin/bash
chmod +x /app/ngrok
chmod +x /app/clone.sh
chmod +x /app/rclone-v1.51.0-linux-amd64/rclone
nohup /app/.apt/usr/bin/qbittorrent-nox -d --webui-port=8080 &
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
/app/ngok.sh




