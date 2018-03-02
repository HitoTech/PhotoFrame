#!/bin/bash
#slideshow script
sleep 1
echo Initializing photo frame...
export DISPLAY=:0.0
export XAUTHORITY=/home/pi/.Xauthority

qiv \
    --fullscreen \
    --readonly \
    --shuffle \
    --slide \
    --random \
    --autorotate \
    --no_filter \
    --delay 60 \
    --recursivedir \
    --scale_down \
    --no_statusbar \
    --maxpect /home/pi/pics;
