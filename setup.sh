#!/bin/bash

wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -q ngrok-stable-linux-amd64.zip
chmod +x /app/ngrok
/app/ngrok authtoken $TOKEN

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.53.3/rclone-v1.53.3-linux-amd64.zip
unzip -q rclone-v1.53.3-linux-amd64.zip

