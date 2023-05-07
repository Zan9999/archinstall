#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader mesa-vdpau lib32-mesa-vdpau lib32-libva-mesa-driver"
arch-chroot /mnt /bin/bash -c "sed -i s/'MODULES=()'/'MODULES=(amdgpu radeon)'/g /etc/mkinitcpio.conf"
cp -rf ../../tweaks/amd/* /mnt/etc/modprobe.d/
