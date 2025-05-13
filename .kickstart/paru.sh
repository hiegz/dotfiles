#!/bin/bash

if ! pacman -Qs rustup &> /dev/null; then
    echo "paru installation error: rustup is not installed"
    echo "help: run 'make rust' in $HOME"
    exit 1
fi

if command -v paru &> /dev/null; then
    exit 0
fi

rm -rdf $HOME/.kickstart/paru
git clone https://aur.archlinux.org/paru $HOME/.kickstart/paru
cd $HOME/.kickstart/paru
makepkg -si --noconfirm
rm -rdf $HOME/.kickstart/paru
