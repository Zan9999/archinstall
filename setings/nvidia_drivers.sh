#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader lib32-opencl-nvidia opencl-nvidia libxnvctrl"
arch-chroot /mnt /bin/bash -c "mkinitcpio -P"
