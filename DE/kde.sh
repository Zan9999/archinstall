#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed ttf-ubuntu-font-family plasma firefox kde-applications pakagekit-qt5"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
