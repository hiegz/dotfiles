#!/bin/bash

if ! command -v node &>/dev/null; then
    LATEST_VERSION=$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest |
        grep -Po '"tag_name": "\K(.*)(?=")')
    PROFILE=/dev/null bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_VERSION/install.sh | bash"

    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

    nvm install node
fi

npm install -g \
    typescript \
    typescript-language-server \
    tailwindcss \
    @tailwindcss/language-server \
    @fsouza/prettierd \
    prettier

[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
