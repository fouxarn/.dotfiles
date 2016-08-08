#!/bin/bash

xrandr --output DVI-0 --primary
xrandr --output DVI-0 --mode 1920x1080 --rate 144.00
xrandr --output Displayport-1 --left-of DVI-0
xrandr --output DVI-1 --right-of DVI-0
xset m 0 0

exec i3

