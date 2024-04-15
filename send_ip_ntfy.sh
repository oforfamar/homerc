#!/bin/bash

# Wait for the network to be up
while ! ping -c 1 -W 1 8.8.8.8; do
    sleep 1
done

# Gathering machine details
HOSTNAME="$(hostname)"
IP_ADDR="$(hostname -I | awk '{print $1}')"

# URL of your ntfy server
NTFY_URL="http://ntfy.local/proxmox"

# Send the notification
curl -d "\"$HOSTNAME\" is up with IP: $IP_ADDR" "$NTFY_URL"
