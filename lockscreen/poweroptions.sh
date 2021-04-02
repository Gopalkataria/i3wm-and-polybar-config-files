#!/usr/bin/bash

k=$(echo "shutdown
sleep
reboot
logout" | rofi -lines 5 -padding 5 -width 30 -dmenu  -sidebar-mode -columns 1 -font 'Roboto Sans 15' -icon-theme la-capitaine-icon-theme -show-icons -theme ~/PATH_TO_YOUR_FILE/new.rasi -modi "drun" -location 0 -p Poweroption ) 

if [[ "$k" == "shutdown" ]]; then exec poweroff ; fi
if [[ "$k" == "sleep" ]]; then exec systemctl suspend ; fi

if [[ "$k" == "reboot" ]]; then exec reboot ; fi
if [[ "$k" == "logout" ]]; then exec i3-msg exit ; fi


