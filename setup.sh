#!bin/bash

USERS=("user1" "user2" "user3")
WORKDIR="/opt/workdir"

sudo mkdir -p "$WORKDIR"
sudo chown root:root "$WORKDIR"
sudo chmod 777 "$WORKDIR"

for USER in "${USERS[@]}"; do
sudo adduser -m "$USER"
done

for USER in "${USERS[@]}"; do
sudo -u "$USER" touch "$WORKDIR/${USER}_file"
sudo -u "$USER" touch "$WORKDIR/${USER}_file.elf"
done