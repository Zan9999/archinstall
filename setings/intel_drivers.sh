#!/bin/bash

sudo pacman -S mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader libva-intel-driver libva-utils
sudo cp 20-modesetting.conf modesetting.conf /etc/X11/xorg.conf.d/
sudo cp i915.conf /etc/modprobe.d/
