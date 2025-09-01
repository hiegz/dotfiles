#!/bin/bash

LATEST_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest |
    grep -Po '"tag_name": "\K(.*)(?=")')
PROFILE=/dev/null bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_VERSION/install.sh | bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install node

paru -S --noconfirm --needed \
    typescript-language-server \
    prettierd \
    prettier

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
