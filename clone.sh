#!/bin/bash
/app/.apt/usr/bin/rclone --config /app/rclone.conf move "$1" "Nintoma-muker:/hero/${2%.*}" --checkers 1 --drive-chunk-size 32M --fast-list --tpslimit 1 --transfers 3 --exclude '.unwanted/*'  --delete-empty-src-dirs
