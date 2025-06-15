#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    qt5-base \
    qt5-wayland \
    qt6-base \
    qt6-wayland
