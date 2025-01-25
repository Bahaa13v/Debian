#!/bin/bash

rm README.md
cp .bashrc /home/bahaa/.bashrc

sudo apt install nala -y
sudo nala update
sudo nala install xorg i3 alacritty fonts-noto pulseaudio pavucontrol tldr network-manager w3m unzip -y

mkdir -p /home/bahaa/.config/alacritty
mkdir /home/bahaa/.config/i3
mkdir /home/bahaa/.config/i3status

cp i3status.conf /home/bahaa/.config/i3status/config
cp config /home/bahaa/.config/i3/
cp alacritty.yml /home/bahaa/.config/alacritty/
echo "exec i3" > /home/bahaa/.xinitrc

wget https://dl.google.com/linux/direct/google-chrome-canary_current_amd64.deb
sudo dpkg -i google-chrome-canary_current_amd64.deb
sudo nala install -f -y

mkdir /home/bahaa/scripts
cp inbr.sh /home/bahaa/scripts/
cp dcbr.sh /home/bahaa/scripts/
chmod +x /home/bahaa/scripts/*

alacritty migrate
sudo rm /etc/network/interfaces
sudo systemctl enable NetworkManager
