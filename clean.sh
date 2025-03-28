#!/bin/bash
USERS=("user1" "user2" "user3")
WORKDIR="/opt/workdir"

for USER in "${USERS[@]}"; do
    sudo userdel -r "$USER"
done

sudo rm -rf "$WORKDIR"
echo "Очистка завершена."

