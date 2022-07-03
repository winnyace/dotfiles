#!/bin/sh

xrandr --output HDMI-1 --mode 1680x1050 --primary
xrandr --output DP-1 --mode 1280x1024 --left-of HDMI-1
