#!/bin/bash
/app/rclone-v1.51.0-linux-amd64/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/" --checkers 10 --fast-list -v --tpslimit 10 --transfers 10 --exclude '.unwanted/*' --log-file=/app/rclone.log --delete-empty-src-dirs
