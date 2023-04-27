#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-icd-loader lib32-vulkan-icd-loader libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau"
arch-chroot /mnt /bin/bash -c "sed -i s/'MODULES=()'/'MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)'/g /etc/mkinitcpio.conf"
