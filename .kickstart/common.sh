#!/bin/bash

require_paru() {
    if ! command -v paru &> /dev/null; then
        echo "sway installation error: paru is not installed"
        echo "help: run 'make paru' in $HOME"
        exit 1
    fi
}
