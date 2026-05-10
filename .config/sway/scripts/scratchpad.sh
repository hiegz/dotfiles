#!/bin/bash

choice=$(
    swaymsg -t get_tree |
    jq -r '
        .. |
        select(.name? == "__i3_scratch") |
        .floating_nodes[] |
        "\(.id) \(.app_id // .window_properties.class // "unknown") :: \(.name)"
    ' |
    bemenu -p "scratchpad" "$@"
)

[ -z "$choice" ] && exit

id=${choice%% *}

swaymsg "[con_id=$id]" scratchpad show
