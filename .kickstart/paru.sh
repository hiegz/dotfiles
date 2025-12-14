#!/bin/bash

if ! pacman -Qs rustup &> /dev/null; then
    echo "paru installation error: rustup is not installed"
    echo "help: run 'make rust' in $HOME"
    exit 1
fi

if command -v paru &> /dev/null; then
    exit 0
fi

sudo pacman -S --noconfirm --needed gcc pkg-config

if [ ! -d "$HOME/.kickstart/paru-git" ]; then
	git clone https://aur.archlinux.org/paru-git $HOME/.kickstart/paru-git
fi
cd $HOME/.kickstart/paru-git
git pull
makepkg -si --noconfirm
