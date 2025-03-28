#!/bin/bash

LOGFILE="/opt/workdir/log.txt"
WORKDIR="/opt/workdir"
SCRIPT_NAME=$(basename "$0")
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Start $SCRIPT_NAME" >> "$LOGFILE"

for user in $(ls -l "$WORKDIR" | awk '{print $3}' | sort | uniq); do
    COUNT=$(find "$WORKDIR" -user "$user" -type f -name "*.elf" | wc -l)
    echo "Пользователь: $user, ELF-файлов: $COUNT" >> "$LOGFILE"
done

echo "------" >> "$LOGFILE"
