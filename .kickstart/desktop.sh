#!/bin/bash

if ! command -v paru &>/dev/null; then
    echo "sway installation error: paru is not installed"
    echo "help: run 'make paru' in $HOME"
    exit 1
fi

paru -S --noconfirm --needed \
    wl-mirror \
    wl-clipboard \
    xorg-xwayland \
    wayland \
    pipewire \
    pipewire-alsa \
    pipewire-pulse \
    pipewire-jack \
    wireplumber \
    xdg-desktop-portal-gtk \
    xdg-desktop-portal-wlr \
    xdg-desktop-portal \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    ttf-ubuntu-mono-nerd \
    ttf-hack \
    qt5-base \
    qt5-wayland \
    qt6-base \
    qt6-wayland \
    gtk3 \
    gtk4 \
    materia-gtk-theme \
    fluent-gtk-theme \
    papirus-icon-theme \
    xcursor-vanilla-dmz \
    xcursor-vanilla-dmz-aa \
    easyeffects \
    pavucontrol \
    lxappearance \
    nwg-look \
    brightnessctl \
    thunar \
    google-chrome-dev \
    atril \
    calibre \
    bemenu-wayland \
    bemenu \
    tmux \
    fzf \
    imv \
    ghostty \
    dunst \
    gtklock \
    swaybg \
    sway-contrib \
    sway

systemctl --user enable --now pipewire.service
systemctl --user enable --now pipewire-pulse.socket
