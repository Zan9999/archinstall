#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed plasma kde-applications pakagekit-qt5 power-profiles-daemon"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
