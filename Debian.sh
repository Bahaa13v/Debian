#!/bin/bash


sudo apt update && sudo apt full-upgrade -y
sudo apt install fonts-noto-core fonts-noto-mono fonts-noto-color-emoji
sudo apt install xorg i3 feh alacritty pulseaudio pavucontrol tldr network-manager w3m unzip thunar thunar-volman mc -y

mkdir -p /home/bahaa/.config/alacritty
mkdir /home/bahaa/.config/i3status

cp i3status.conf /home/bahaa/.config/i3status/config
cp alacritty.yml /home/bahaa/.config/alacritty/
echo "exec i3" > /home/bahaa/.xinitrc

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f -y

mkdir /home/bahaa/scripts
cp inbr.sh /home/bahaa/scripts/
cp dcbr.sh /home/bahaa/scripts/
chmod +x /home/bahaa/scripts/*

sudo rm /etc/network/interfaces
sudo systemctl enable NetworkManager

echo "exete c.sh after the first i3 launch and comenting out the bar section!"
