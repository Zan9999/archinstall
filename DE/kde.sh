#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed plasma plasma-wayland-session kde-applications power-profiles-daemon"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
