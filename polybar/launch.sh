#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# kill all applets in taskbar 
killall nm-applet 

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar bottombar &

sleep 5 
# launch taskar indicators 
nm-applet &


