#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings egl-wayland lib32-opencl-nvidia opencl-nvidia libxnvctrl"
arch-chroot /mnt /bin/bash -c "sudo systemctl enable nvidia-{suspend,resume,hibernate}"
cp -rf ../../../tweaks/intel/i915.conf /mnt/etc/modprobe.d/
cp -rf ../../../tweaks/intel/20-modesetting.conf /mnt/etc/X11/xorg.conf.d/
cp -rf ../../../tweaks/intel/modesetting.conf /mnt/etc/X11/xorg.conf.d/
cp -rf ../../../tweaks/intel/60-intel-tweaks.conf /mnt/etc/sysctl.d/
cp -rf ../../../tweaks/nvidia/nvidia.conf /mnt/usr/lib/modprobe.d/90-nvidia-tweaks.conf
cp -rf ../../../tweaks/nvidia/nvidia-tweaks.hook /mnt/usr/share/libalpm/hooks/nvidia-tweaks.hook
cp -rf ../../../tweaks/nvidia/nvidia-uvm.conf /mnt/etc/modules-load.d/nvidia-tweaks.conf
cp -rf ../../../tweaks/nvidia/60-nvidia.rules /mnt/usr/lib/udev/rules.d/71-nvidia.rules
