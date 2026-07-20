#!/bin/bash
# Increase/decrease volume and send to wob
case $1 in
    up)
        pamixer -i 2
        ;;
    down)
        pamixer -d 2
        ;;
    mute)
        pamixer -t
        ;;
esac
pamixer --get-volume > /run/user/$(id -u)/wob-volume.sock
