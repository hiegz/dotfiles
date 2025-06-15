#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    gtk3 \
    gtk4
