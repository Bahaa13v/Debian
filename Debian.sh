#!/bin/bash

rm README.md
cp .bashrc /home/bahaa/.bashrc

sudo apt install nala -y
sudo nala updat
sudo nala install xorg i3 alacritty fonts-noto

mkdir -p /home/bahaa/.config/alacritty
mkdir -p /home/bahaa/.config/i3

sudo cp i3status.conf /etc/
cp config /home/bahaa/.config/i3/
cp alacritty.yml /home/bahaa/.config/alacritty/
echo "exec i3" > /home/bahaa/.xinitrc
