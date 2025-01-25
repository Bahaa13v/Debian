#!/bin/bash

rm README.md
cp .bashrc /home/bahaa/.bashrc

sudo apt install nala -y
sudo nala updat
sudo nala install xorg i3 alacritty fonts-noto -y

mkdir -p /home/bahaa/.config/alacritty
mkdir /home/bahaa/.config/i3
mkdir /home/bahaa/.config/i3status

cp i3status.conf /home/bahaa/.config/i3status/config
cp config /home/bahaa/.config/i3/
cp alacritty.yml /home/bahaa/.config/alacritty/
echo "exec i3" > /home/bahaa/.xinitrc

wget https://dl.google.com/linux/direct/google-chrome-canary_current_amd64.deb
sudo nala install -f -y
