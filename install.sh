#!/bin/sh

echo "Installing dependencies"
sudo emerge --ask feh xorg-x11 i3-gaps
echo "Copying Config files"
cp .Xresources ~/.Xresources
cp config ~/.config/i3/config
sudo cp i3blocks.conf /etc/i3blocks.conf
cp background.png ~/Pictures
