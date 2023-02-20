#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed budgie-desktop budgie-extras budgie-screensaver budgie-control-center budgie-backgrounds lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox xorg xorg-server xorg-xinit parole thunar thunar-archive-plugin thunar-volman xfce4-terminal xfce4-taskmanager xarchiver tumbler network-manager-applet gthumb"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
