#!/bin/sh

bluetooth_print() {
    bluetoothctl | while read -r; do
        if [ "$(systemctl is-active "bluetooth.service")" = "active" ]; then
            printf "  "

            devices_paired=$(bluetoothctl paired-devices | grep Device | cut -d ' ' -f 2)
            counter=0

            for device in $devices_paired; do
                device_info=$(bluetoothctl info "$device")

                if echo "$device_info" | grep -q "Connected: yes"; then
                    device_alias=$(echo "$device_info" | grep "Alias" | cut -d ' ' -f 2)

                    if [ $counter -gt 0 ]; then
                        printf ", %s" "$device_alias"
                    else
                        printf " %s" "$device_alias"
                    fi

                    counter=$((counter+1))
                fi
            done

            printf '\n'
        else
            echo "\033[1;30m'  \033[0m'"
        fi
    done
}

bluetooth_toggle() {
    if bluetoothctl show | grep -q "Powered: no"; then
        bluetoothctl power on >> /dev/null
    else
        bluetoothctl power off >> /dev/null
        echo "%{F#2193ff}"
    fi
}

case "$1" in
    --toggle)
        bluetooth_toggle
        ;;
    *)
        bluetooth_print
        ;;
esac
