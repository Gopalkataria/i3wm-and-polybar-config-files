#!/bin/bash

# stop the music 
playerctl stop
pactl set-sink-mute @DEFAULT_SINK@  1

#take a screenshot
scrot ~/sys_custom/lockscreen/lock.png  -o 

#blur the screenshot 
convert ~/sys_custom/lockscreen/lock.png -blur 32x8 ~/sys_custom/lockscreen/lock_blur.png 

#add text on lock_blur.png, save to lock.png 
convert -font 'Material-Design-Iconic-Font' -fill white -pointsize 200  -stroke black  -strokewidth 5   -draw "text 620,400 ''    " ~/sys_custom/lockscreen/lock_blur.png ~/sys_custom/lockscreen/lock.png
#respawn theme colors 
#~/sys_custom/wallpaper/respawn.sh 

#now use the blurred screenshot on the lockscreen  
i3lock -i ~/sys_custom/lockscreen/lock.png -b -u  -e  -f  -p default



