#!/bin/bash

if [ -f $HOME/Pictures/wallpaper.png ]; then
	swaymsg output \* background "$HOME/Pictures/wallpaper.png" fill
else
	swaymsg output \* background \#000000 solid_color
fi
