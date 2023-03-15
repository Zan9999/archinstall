#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed ttf-ubuntu-font-family gnome gdm firefox"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
