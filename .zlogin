if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    # if [[ "$(cat /etc/hostname)" == "gamemax" ]]; then
    #     sway --unsupported-gpu
    # elif [[ "$(cat /etc/hostname)" == "zenbook" ]]; then
    #     exec sway
    # fi
fi
