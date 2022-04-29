#!/bin/bash

make || exit 1
killall sxhkd

xrandr --output Virtual1 --mode 1920x1080
sleep 1

export DISPLAY=:80
sxhkd -c example/sxhkdrc &

while sleep 1; do berry -c example/autostart ; done
