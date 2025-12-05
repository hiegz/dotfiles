if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    if [[ "$(hostname)" == "gamemax" ]]; then
        exec sway --unsupported-gpu
    elif [[ "$(hostname)" == "zenbook" ]]; then
        exec sway
    fi
fi
