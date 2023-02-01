#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed cinnamon cinnamon-control-center cinnamon-translations gvfs lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox xorg xorg-server xorg-xinit arc-gtk-theme arc-icon-theme parole xfce4-terminal xfce4-taskmanager xarchiver tumbler network-manager-applet ristretto"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
