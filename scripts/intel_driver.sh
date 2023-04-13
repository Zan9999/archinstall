#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader"
arch-chroot /mnt /bin/bash -c "sed -i s/'MODULES=()'/'MODULES=(crc32c-intel intel_agp i915)'/g /etc/mkinitcpio.conf"
