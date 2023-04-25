#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed budgie-desktop budgie-screensaver power-profiles-daemon switcheroo-control budgie-control-center budgie-backgrounds lightdm lightdm-gtk-greeter parole thunar thunar-archive-plugin thunar-volman xfce4-terminal xfce4-taskmanager xarchiver tumbler network-manager-applet gthumb"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
