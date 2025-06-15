#!/bin/bash

. $HOME/.kickstart/common.sh

require_paru

paru -S --noconfirm --needed \
    network-manager \
    networkmanager-openvpn \
    net-tools \
    whois

sudo systemctl enable --now NetworkManager
