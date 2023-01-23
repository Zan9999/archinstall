#!/bin/bash

sudo arch-chroot /mnt /bin/bash -c  "pacman -S --needed --noconfirm mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader libva-intel-driver libva-utils"
