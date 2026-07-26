#!/bin/bash

packages=(
    # Desktop
    gnome

    # Terminal
    ghostty
    less
    fzf

    # Applications
    google-chrome
    atril
    calibre
    ristretto
    vlc
    vlc-plugin-ffmpeg

    # Themes
    fluent-gtk-theme

    # Icons
    papirus-icon-theme

    # Cursors
    xcursor-vanilla-dmz
    xcursor-vanilla-dmz-aa

    # Fonts
    ttf-ubuntu-mono-nerd
    ttf-hack
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
)

if ! command -v paru &>/dev/null; then
    echo "error: paru is not installed"
    echo "help: run 'make paru' in $HOME"
    exit 1
fi

paru -S --noconfirm --needed "${packages[@]}"
