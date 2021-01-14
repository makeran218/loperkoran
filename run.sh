#!/bin/bash
chmod +x /app/ngrok
/app/ngrok authtoken $TOKEN
chmod +x /app/clone.sh
chmod +x /app/rclone-v1.53.3-linux-amd64/rclone
chmod +x /app/ngok.sh
chmod +x /app/config.sh
/app/config.sh
/app/ngok.sh




