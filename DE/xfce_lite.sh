#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed xfce4 lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
