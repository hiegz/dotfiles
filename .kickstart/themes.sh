#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    materia-gtk-theme \
    fluent-gtk-theme \
    papirus-icon-theme \
    xcursor-vanilla-dmz \
    xcursor-vanilla-dmz-aa
