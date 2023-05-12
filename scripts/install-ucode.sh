#!/bin/bash

cpu_model_name=$(cat /proc/cpuinfo | grep vendor | cut -c 13-24 | uniq)

if [[ $cpu_model_name = "GenuineIntel" ]]; then
    arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm intel-ucode"
fi
if [[ $cpu_model_name = "AuthenticAMD" ]]; then
    arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm amd-ucode"
fi
