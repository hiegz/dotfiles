#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    noto-fonts \
    noto-fonts-emoji \
    ttf-ubuntu-mono-nerd \
    ttf-hack
