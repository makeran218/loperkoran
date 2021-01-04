#!/bin/bash
chmod +x /app/ngrok
chmod +x /app/clone.sh
chmod +x /app/rclone-v1.51.0-linux-amd64/rclone
nohup /app/.apt/usr/bin/qbittorrent-nox -d --webui-port=8080 &
nohup /app/ngrok authtoken $TOKEN &
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
/app/ngok.sh
ln -s /app/.apt/usr/lib/x86_64-linux-gnu/libboost_system.so.1.65.1 /app/.apt/usr/lib/x86_64-linux-gnu/libboost_system.so.1.54.0
curl http://localhost:4040/api/tunnels
#cd tcloud

#node server.js 



