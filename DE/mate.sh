#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed mate mate-extra lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox xorg xorg-server xorg-xinit network-manager-applet"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
