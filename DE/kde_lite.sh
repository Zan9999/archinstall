#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed kitty ttf-ubuntu-font-family plasma firefox pakagekit-qt5"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
