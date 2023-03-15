#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed ttf-ubuntu-font-family gnome gnome-extra gdm firefox"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
