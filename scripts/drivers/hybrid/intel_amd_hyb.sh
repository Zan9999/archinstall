#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader vulkan-radeon lib32-vulkan-radeon"
cp -rf ../../../tweaks/intel/i915.conf /mnt/etc/modprobe.d/
cp -rf ../../../tweaks/intel/20-modesetting.conf /mnt/etc/X11/xorg.conf.d/
cp -rf ../../../tweaks/intel/modesetting.conf /mnt/etc/X11/xorg.conf.d/
cp -rf ../../../tweaks/intel/60-intel-tweaks.conf /mnt/etc/sysctl.d/
cp -rf ../../../tweaks/amd/* /mnt/etc/modprobe.d/
