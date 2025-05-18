#!/bin/sh

if ! command -v paru &> /dev/null; then
	echo "sway installation error: paru is not installed"
	echo "help: run 'make paru' in $HOME"
	exit 1
fi

paru -S --noconfirm --needed \
    wl-mirror                \
    wl-clipboard             \
    xorg-xwayland 	         \
    noto-fonts               \
    noto-fonts-emoji         \
    ttf-ubuntu-mono-nerd     \
    ttf-hack                 \
    qt5-base                 \
    qt5-wayland              \
    qt6-base                 \
    qt6-wayland              \
    gtk3                     \
    gtk4                     \
    materia-gtk-theme        \
    fluent-gtk-theme         \
    papirus-icon-theme       \
    xcursor-vanilla-dmz      \
    xcursor-vanilla-dmz-aa   \
    lxappearance             \
    nwg-look                 \
    brightnessctl            \
    thunar                   \
    google-chrome            \
    atril                    \
    calibre                  \
    bemenu-wayland           \
    bemenu 		             \
    grimshot-bin-sway        \
    tmux                     \
    fzf                      \
    imv                      \
    ghostty                  \
    dunst                    \
    gtklock                  \
    swaybg                   \
    sway
