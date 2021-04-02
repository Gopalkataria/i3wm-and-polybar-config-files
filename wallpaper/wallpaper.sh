#  generating shades of pink, sometimes even gives orange and yellow, but its fine
COLOR="#ff9$(openssl rand -hex 1)9"
echo $COLOR 


// changing keyword from main config files to the selected color 
sed "s/COLOR/$(echo $COLOR)/g" PATH_TO_CONFIG/.config/polybar/configmain > PATH_TO_CONFIG/.config/polybar/config
sed "s/COLOR/$(echo $COLOR)/g" PATH_TO_CONFIG/.config/i3/configmain > PATH_TO_CONFIG/.config/i3/config
sed "s/COLOR/$(echo $COLOR)/g" PATH_TO_CONFIG/PATH_TO_YOUR_FILE/wall.svg  > PATH_TO_CONFIG/PATH_TO_YOUR_FILE/new.svg
sed "s/COLOR/$(echo $COLOR)/g" PATH_TO_CONFIG/PATH_TO_YOUR_FILE/custom.rasi  > PATH_TO_CONFIG/PATH_TO_YOUR_FILE/new.rasi

convert PATH_TO_CONFIG/PATH_TO_YOUR_FILE/new.svg PATH_TO_CONFIG/PATH_TO_YOUR_FILE/new.jpg 
