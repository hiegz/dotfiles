#!/bin/bash

function join_by {
    local d=${1-} f=${2-}
    if shift 2; then
        printf %s "$f" "${@/#/$d}"
    fi
}

result="$(date +"%a %F %H:%M")"

if [[ "$(cat /etc/hostname)" == "zenbook" ]]; then
    battery_info="Battery: $(($(cat /sys/class/power_supply/BATT/charge_now) * 100 / $(cat /sys/class/power_supply/BATT/charge_full)))%"
    result="$battery_info | $result"
fi

echo $result
