#!/usr/bin/env bash

entries="  Lock,  Logout, Suspend, Reboot, Shutdown"

selected=$(echo $entries | rofi -m 0 -dmenu -sep ',' -p "" -theme ~/.config/rofi/power.rasi -i | sed 's/[^a-zA-Z0-9]//g' | awk '{print tolower($1)}')

lock() {
    lock.sh
}

case $selected in
  lock)
    lock;;
  logout)
    swaymsg exit;;
  suspend)
    lock && systemctl suspend;;
  reboot)
    systemctl reboot;;
  shutdown)
    systemctl poweroff -i;;
esac
