#!/bin/bash

case $1 in
    up)
        brightnessctl set 2+
        ;;
    down)
        brightnessctl set 2-
        ;;
esac

brightnessctl -m | head -n 1 | cut -d',' -f4 | tr -d '%' > /run/user/$(id -u)/wob-brightness.sock
