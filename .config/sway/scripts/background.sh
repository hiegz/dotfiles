#!/bin/bash

if [ -f $HOME/wallpaper.png ]; then
	swaymsg output \* background "$HOME/wallpaper.png" fill
else
	swaymsg output \* background \#000000 solid_color
fi
