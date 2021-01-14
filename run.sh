#!/bin/bash
chmod +x /app/ngrok
/app/ngrok authtoken $TOKEN
chmod +x /app/clone.sh
nohup /app/.apt/usr/bin/qbittorrent-nox -d --webui-port=8080 &
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
/app/ngok.sh




