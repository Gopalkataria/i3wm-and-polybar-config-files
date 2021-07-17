#!/bin/bash


if [[ "$1" == "n" ]]
    then 
        killall polybar 
        while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

fi



# if the bar is running stop it otherwise start it
# so it kinda works like a toggle 
if  pgrep -u $UID -x polybar >/dev/null 
    then 
        killall -q polybar 
    else 
        polybar minimalbar & 
    fi
    



