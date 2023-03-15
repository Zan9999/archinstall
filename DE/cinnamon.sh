#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed cinnamon cinnamon-control-center nemo-emblems nemo-fileroller nemo-preview nemo-image-converter cinnamon-translations gucharmap xed lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox parole xfce4-terminal xfce4-taskmanager network-manager-applet gthumb"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
