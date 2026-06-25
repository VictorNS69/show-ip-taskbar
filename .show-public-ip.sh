#! /bin/bash

# Simple script to show the public IP (if error print unknown)
# Recomended time period: 1800s (30 min)

ADDR=$(curl -s ifconfig.me)
if [[ $? -ne 0 || -z "$ADDR" ]]; then
    ADDR="Unknown"
fi

echo $ADDR
