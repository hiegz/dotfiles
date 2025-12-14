#!/bin/bash

if ! command -v pipx &> /dev/null; then
    echo "error: pipx is not installed"
    echo "info:  try 'make python' in $HOME"
    exit 1
fi

pipx install yt-dlp
