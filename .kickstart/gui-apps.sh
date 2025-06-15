#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    imv \
    lxappearance \
    nwg-look \
    thunar \
    atril \
    google-chrome \
    calibre \
    ghostty
