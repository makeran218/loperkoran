#!/bin/bash

wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -q ngrok-stable-linux-amd64.zip

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.51.0/rclone-v1.51.0-linux-amd64.zip
unzip rclone-v1.51.0-linux-amd64.zip -d /app/


echo "===== Unarchive App ====="
mkdir tcloud
tar zxf web.tgz -C tcloud --strip-components 1



echo "===== Install dependencies ====="
cd tcloud
npm install --only=prod


