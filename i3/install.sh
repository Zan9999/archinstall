#!/bin/sh

yay --noconfirm
cat pkglist.txt | yay -Sy --noconfirm -

cp -r -f .config ~/
sudo systemctl enable --now rngd
sudo systemctl enable --now dbus-broker.service
sudo systemctl --global enable dbus-broker.service
betterlockscreen -u /usr/share/backgrounds/archlinux/landscape.jpg
nvim --headless +PackerSync +qall

yay -Yc --noconfirm
