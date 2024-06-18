#!/bin/bash

# Function to get current brightness
get_brightness() {
    xrandr --verbose | grep -i brightness | cut -f2 -d ' '
}

# Function to set brightness
set_brightness() {
    new_brightness=$(echo "$(get_brightness) $1 0.1" | bc)
    xrandr --output eDP-1 --brightness $new_brightness
}

# Check argument and adjust brightness
case "$1" in
    up)
        set_brightness +
        ;;
    down)
        set_brightness -
        ;;
    get)
        get_brightness
        ;;
    *)
        echo "Usage: $0 {up|down}"
        exit 1
        ;;
esac