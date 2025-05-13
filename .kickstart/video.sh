#!/bin/bash

paru -S --noconfirm --needed   \
    pipewire                   \
    xdg-desktop-portal-gtk     \
    xdg-desktop-portal-wlr     \
    xdg-desktop-portal

systemctl --user enable --now pipewire.service
# systemctl --user enable --now xdg-desktop-portal.service
