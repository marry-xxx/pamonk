#!/bin/bash
set -e

echo "=== Update & Upgrade Sistem ==="
sudo apt update && sudo apt upgrade -y

echo "=== Install Basic Tools ==="
sudo apt install -y zip unzip nano wget curl git net-tools sl xdotool proxychains4 python3-pip \
                   openjdk-8-jdk firefox apache2 lxde xrdp actiona

echo "=== Install Google Chrome ==="
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update -y
sudo apt install -y google-chrome-stable

echo "=== Setup Chrome Profiles ==="
cd /home
wget -q cerdaspro.com/chr/chrome60.zip && unzip -o chrome60.zip

echo "=== Download Desktop Scripts ==="
mkdir -p ~/Desktop
cd ~/Desktop
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/setup.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/play.png
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/chr.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GP/gp.ascr
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GP/gp.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GP/gpc.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GD/FI.ascr
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GD/GDrun.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GD/link.sh
wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/ADS/adsupdate.sh

chmod +x *.sh *.ascr || true

echo "=== Konfigurasi Sistem ==="
echo "root:Kerjacerdas55" | sudo chpasswd
sudo adduser xrdp ssl-cert
sudo ufw allow 3389
sudo ufw allow from 1.1.1.1 to any port 3389

echo "=== Ganti hosts & proxychains.conf ==="
cd /etc
sudo mv hosts hosts.bak || true
sudo wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/hosts -O hosts
sudo mv proxychains.conf proxychains.conf.bak || true
sudo wget -q https://raw.githubusercontent.com/marry-xxx/pamonk/main/GD/proxychains.conf -O proxychains.conf

echo "=== Set Default Session Manager ke LXDE ==="
sudo update-alternatives --set x-session-manager /usr/bin/startlxde

echo "=== Enable & Restart XRDP ==="
sudo systemctl enable xrdp
sudo systemctl restart xrdp

echo "=== Bersih-Bersih ==="
sudo apt autoclean -y
sudo apt autoremove -y

sudo chmod -x /usr/bin/gnome-keyring-daemon
sudo apt remove --purge gnome-keyring
killall gnome-keyring-daemon

echo ">>> Installasi selesai!"
echo ">>> RDP sudah aktif di port 3389"
echo ">>> Login pakai user root (password: Kerjacerdas55)"
