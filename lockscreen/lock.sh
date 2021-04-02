
#take a screenshot
scrot ~/PATH_TO_YOR_FILES/lockscreen/lock.png  -o 

#blur the screenshot 
convert ~/PATH_TO_YOR_FILES/lockscreen/lock.png -blur 32x8 ~/PATH_TO_YOR_FILES/lockscreen/lock_blur.png 

#add text on lock_blur.png, save to lock.png 
convert -font 'Roboto' -fill white -pointsize 88 -stroke black -strokewidth 2.1  -draw "text 192,192 'Enter password to unlock ' " ~/PATH_TO_YOR_FILES/lockscreen/lock_blur.png ~/PATH_TO_YOR_FILES/lockscreen/lock.png


#now use the blurred screenshot on the lockscreen  
i3lock -i ~/PATH_TO_YOR_FILES/lockscreen/lock.png  -e  -f  -p default
