#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.51.0/rclone-v1.51.0-linux-amd64.zip
unzip -q rclone-v1.51.0-linux-amd64.zip
export PATH=$PWD/rclone-v1.51.0-linux-amd64:$PATH



wget -q https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.3.1.10/qbittorrent-nox_linux_x64_static.zip
unzip -q qbittorrent-nox_linux_x64_static.zip
export PATH=$PWD:$PATH
qbittorrent-nox -d --webui-port=8080

mkdir -p downloads

echo "Rclone config detected"
echo -e "[DRIVE]\n$RCLONE_CONFIG" > rclone.conf
