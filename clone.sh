#!/bin/bash
/app/rclone-v1.53.3-linux-amd64/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/${2%.*}" --checkers 1 --fast-list -v --tpslimit 1 --transfers 1 --exclude '.unwanted/*' --log-file=/app/rclone.log --delete-empty-src-dirs
