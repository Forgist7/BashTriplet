#!/bin/bash

LOGFILE="/opt/workdir/log.txt"
DIRECTORY="/opt/workdir"
SCRIPT_NAME=$(basename "$0")
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Старт $SCRIPT_NAME" >> "$LOGFILE"

for user in $(ls -l "$DIRECTORY" | awk '{print $3}' | sort | uniq); do
    USER_ID=$(id -u "$user" 2>/dev/null)
    if [ -n "$USER_ID" ]; then
        COUNT=$(find "$DIRECTORY" -user "$user" -type f -name "*.elf" | wc -l)
        echo "Пользователь: $user (UID: $USER_ID), ELF-файлов: $COUNT" >> "$LOGFILE"
    fi
done

echo "------" >> "$LOGFILE"

