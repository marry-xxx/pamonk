#!/bin/bash
printf '\033]2;helpbot\a'
while :
do
rm -rf /home/chrome60 & termdown 3
cd /home
zip_files=(*.zip)
random_zip=${zip_files[RANDOM % ${#zip_files[@]}]}
echo "Extracting file: $random_zip"
unzip -o "$random_zip"
clear
 google-chrome --user-data-dir=/home/chrome60 https://gamehtml5.com/close.php --force-device-scale-factor=0.7 --window-size=1900,1200 --window-position=343,0 --start-maximized --no-sandbox --incognito & sleep 5

#kotrigames
 google-chrome --user-data-dir=/home/chrome60 https://rudgames.com/fg.php --start-maximized --no-sandbox --incognito & termdown 10
xdotool mousemove 767 396 click 1 & sleep 1 
termdown 2
#xdotool mousemove 804 435 click 1 & sleep 1 
termdown 5
#xdotool mousemove 774 331 click 1 & sleep 1 
termdown 3
#xdotool mousemove 868 541 click 1 & sleep 1 
termdown 8

#gameblissful
 google-chrome --user-data-dir=/home/chrome60 https://rudgames.com/fg.php --start-maximized --no-sandbox --incognito & termdown 10
xdotool mousemove 646 497 click 1 & sleep 1 
termdown 2
#xdotool mousemove 554 515 click 1 & sleep 1 
termdown 10
#xdotool mousemove 735 193 click 1 & sleep 1 
termdown 3
#xdotool mousemove 1012 537 click 1 & sleep 1 
termdown 6
#xdotool mousemove 626 11 click 1 & sleep 1 
termdown 5

#Gamehtml5
 google-chrome --user-data-dir=/home/chrome60 https://rudgames.com/fg.php --start-maximized --no-sandbox --incognito & termdown 10
xdotool mousemove 767 396 click 1 & sleep 1 
termdown 2
#xdotool mousemove 804 435 click 1 & sleep 1 
termdown 5
#xdotool mousemove 774 331 click 1 & sleep 1 
termdown 3
#xdotool mousemove 868 541 click 1 & sleep 1 
termdown 8

#Takterkendali
 google-chrome --user-data-dir=/home/chrome60 https://rudgames.com/fg.php --start-maximized --no-sandbox --incognito & termdown 15
xdotool mousemove 773 396 click 1 & sleep 1 
termdown 5
xdotool mousemove 778 441 click 1 & sleep 1 
termdown 7
xdotool mousemove 868 541 click 1 & sleep 1 
termdown 10
xdotool mousemove 1013 484 click 1 & sleep 1 
termdown 10
termdown 7


pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
sudo apt autoclean
sudo apt autoclean
sudo apt autoclean
termdown 8
done
