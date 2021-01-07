#!/bin/bash
/app/rclone-v1.51.0-linux-amd64/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/" --checkers 5 --fast-list -v --tpslimit 5 --transfers 5 --exclude '.unwanted/*' --log-file=/app/rclone.log --delete-empty-src-dirs
