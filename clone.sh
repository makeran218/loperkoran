#!/bin/bash
/app/rclone-v1.51.0-linux-amd64/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/" --checkers 20 --fast-list -v --tpslimit 20 --transfers 20 --exclude '.unwanted/*' --log-file=/app/rclone.log --delete-empty-src-dirs
