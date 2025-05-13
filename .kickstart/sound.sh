#!/bin/bash

paru -S --noconfirm --needed \
    pipewire                 \
    pipewire-alsa            \
    pipewire-pulse           \
    pipewire-jack            \
    wireplumber              \
    easyeffects              \
    pavucontrol

systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.socket
