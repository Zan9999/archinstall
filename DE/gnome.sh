#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed gnome-software-packagekit-plugin gnome gnome-extra gdm firefox"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
