#!/bin/bash
printf '\033]2;helpbot\a'
while :
do
 google-chrome --user-data-dir=/home/chrome60 --start-maximized --no-sandbox --incognito & sleep 5
 google-chrome --user-data-dir=/home/chrome60  https://rudgame.com --start-maximized --no-sandbox --incognito --autoplay-policy=no-user-gesture-required --disable-blink-features=AutomationControlled & sleep 5
clear
google-chrome --user-data-dir=/home/chrome60  https://rudgame.com --start-maximized --no-sandbox --incognito --autoplay-policy=no-user-gesture-required --disable-blink-features=AutomationControlled & sleep 3
clear
sleep 10
clear
echo start helpbot
actiona -s -C -Q -e -x /root/Desktop/gp.ascr
sleep 5
pkill --oldest chrome
pkill --oldest chrome
pkill --oldest chrome
apt-get autoclean
clear
sleep 3
/usr/games/sl -l
sleep 2
done
