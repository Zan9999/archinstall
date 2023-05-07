#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed konsole plasma-wayland-session plasma power-profiles-daemon"
arch-chroot /mnt /bin/bash -c "systemctl enable sddm"
