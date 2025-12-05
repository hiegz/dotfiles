#!/bin/bash

if ! pacman -Qs rustup &> /dev/null; then
    echo "paru installation error: rustup is not installed"
    echo "help: run 'make rust' in $HOME"
    exit 1
fi

if command -v paru &> /dev/null; then
    exit 0
fi

sudo pacman -S --noconfirm gcc pkg-config

if [ ! -d "$HOME/.kickstart/paru" ]; then
	git clone https://aur.archlinux.org/paru $HOME/.kickstart/paru
fi
cd $HOME/.kickstart/paru
git pull
makepkg -si --noconfirm
