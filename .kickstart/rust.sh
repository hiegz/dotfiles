#!/bin/bash

sudo pacman -S --noconfirm --needed rustup
rustup default stable
rustup component add rust-analyzer
rustup component add rustfmt
