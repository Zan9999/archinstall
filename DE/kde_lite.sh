#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed konsole xorg xorg-server plasma power-profiles-daemon kwalletmanager kio-admin xsettingsd"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
