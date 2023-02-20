#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed cinnamon cinnamon-control-center cinnamon-translations xed lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox xorg xorg-server xorg-xinit parole xfce4-terminal xfce4-taskmanager xarchiver tumbler network-manager-applet gthumb"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
