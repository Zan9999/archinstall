#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader libva-intel-driver"
arch-chroot /mnt /bin/bash -c "sed -i s/'MODULES=()'/'MODULES=(crc32c-intel intel_agp i915)'/g /etc/mkinitcpio.conf"
cp -rf ../tweaks/intel/i915.conf /mnt/etc/modprobe.d/
cp -rf ../tweaks/intel/20-modesetting.conf /etc/X11/xorg.conf.d/
cp -rf ../tweaks/intel/modesetting.conf /etc/X11/xorg.conf.d/
