#!/bin/bash
chmod +x /app/ngrok
/app/ngrok authtoken $TOKEN
chmod +x /app/clone.sh
chmod +x /app/rclone-v1.53.3-linux-amd64/rclone
nohup /app/.apt/usr/bin/qbittorrent-nox -d --webui-port=8080 &
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
sleep 5s
echo =========run ngrok=======
/app/ngok.sh
cat nohup.out



