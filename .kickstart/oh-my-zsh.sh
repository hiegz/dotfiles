#!/bin/bash

paru -S --noconfirm --needed \
    sh                       \
    curl

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --skip-chsh --unattended
