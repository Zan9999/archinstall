#!bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed virtualbox-guest-utils"
arch-chroot /mnt /bin/bash -c "systemctl enable vboxservice.service"
