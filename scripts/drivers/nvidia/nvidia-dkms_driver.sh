#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings egl-wayland vulkan-icd-loader lib32-vulkan-icd-loader lib32-opencl-nvidia opencl-nvidia libxnvctrl"
arch-chroot /mnt /bin/bash -c "sed -i s/'MODULES=()'/'MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)'/g /etc/mkinitcpio.conf"
arch-chroot /mnt /bin/bash -c "sudo systemctl enable nvidia-{suspend,resume,hibernate}"
cp -rf ../../../tweaks/nvidia/nvidia.conf /mnt/usr/lib/modprobe.d/90-nvidia-tweaks.conf
cp -rf ../../../tweaks/nvidia/nvidia-tweaks.hook /mnt/usr/share/libalpm/hooks/nvidia-tweaks.hook
cp -rf ../../../tweaks/nvidia/nvidia-uvm.conf /mnt/etc/modules-load.d/nvidia-tweaks.conf
cp -rf ../../../tweaks/nvidia/60-nvidia.rules /mnt/usr/lib/udev/rules.d/71-nvidia.rules
