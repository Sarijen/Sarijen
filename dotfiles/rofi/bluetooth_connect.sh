#!/bin/bash

bluetoothctl power on
bluetoothctl scan on &

sleep 3  # Wait for some devices to appear

# Get list of devices: MAC + name
DEVICES=$(bluetoothctl devices | sed 's/Device //')

# Choose device via rofi
CHOSEN=$(echo "$DEVICES" | rofi -dmenu -i -p "Bluetooth Devices")

# Exit if nothing chosen
[ -z "$CHOSEN" ] && exit

# Split into MAC and NAME
MAC=$(echo "$CHOSEN" | awk '{print $1}')

# Attempt to pair + trust + connect
bluetoothctl trust "$MAC"
bluetoothctl pair "$MAC"
bluetoothctl connect "$MAC"
