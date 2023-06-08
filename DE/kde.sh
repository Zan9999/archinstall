#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed plasma xorg xorg-server kde-applications power-profiles-daemon kwalletmanager kio-admin xsettingsd"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
