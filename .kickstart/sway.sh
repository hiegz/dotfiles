#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    bemenu-wayland \
    bemenu \
    grimshot-bin-sway \
    gtklock \
    swaybg \
    sway
