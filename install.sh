#!/bin/sh

echo "Installing dependencies"
sudo pacman -Sy python-pywal i3-gaps xorg xorg-server xorg-xinit feh ttf-dejavu
echo "Copying Config files"
cp .Xresources ~/.Xresources
cp config ~/.config/i3/config
mkdir config/
mkdir config/i3
sudo cp i3blocks.conf /etc/i3blocks.conf
mkdir Pictures
cp background.png ~/Pictures/background.png
xrdb -merge ~/.Xresources
cp .xinitrc ~/.xinitrc
cp .zshrc ~/.zshrc
