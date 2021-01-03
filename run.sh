#!/bin/bash
chmod +x /app/qbittorrent-nox
chmod +x /app/ngrok
chmod +x /app/clone.sh
chmod +x /app/rclone-v1.51.0-linux-amd64/rclone
nohup /app/qbittorrent-nox -d --webui-port=8080 &
nohup /app/ngrok authtoken $TOKEN &
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
/app/ngok.sh

#cd tcloud

#node server.js 



