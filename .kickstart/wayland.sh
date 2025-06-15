#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    wl-mirror \
    wl-clipboard \
    xorg-xwayland \
    wayland
