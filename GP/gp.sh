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
 google-chrome --user-data-dir=/home/chrome60 --start-maximized --no-sandbox --incognito & sleep 3
google-chrome --user-data-dir=/home/chrome60  https://rudgame.com --start-maximized --no-sandbox --incognito --autoplay-policy=no-user-gesture-required --disable-blink-features=AutomationControlled & sleep 1
clear
sleep 10
clear
echo start helpbot
actiona -s -C -Q -e -x /root/Desktop/gp.ascr
sleep 30
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
apt-get autoclean
clear
sleep 3
/usr/games/sl -l
sleep 2
done
