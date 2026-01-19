#! /bin/bash

# Simple script to show the IP (if no VPN, then show eth0)

ADDR=$(ip addr | grep tun0 | grep inet | awk '{print $2}'| cut -d "/" -f 1)
if [[ -z "$ADDR" ]]; then
    ADDR=$(ip addr | grep eth0 | grep inet | awk '{print $2}'| cut -d "/" -f 1)
fi

echo "$ADDR" | sed 's/$/ /g' 
