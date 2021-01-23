#!/bin/bash
/app/.apt/usr/bin/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/${2%.*}" --checkers 1 --fast-list --tpslimit 1 --transfers 5 --exclude '.unwanted/*'  --delete-empty-src-dirs
