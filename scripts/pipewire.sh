#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm alsa-utils alsa-lib alsa-firmware alsa-card-profiles alsa-plugins pipewire pipewire-pulse pipewire-alsa pipewire-jack"
if aplay -L | grep -q ALC887 ; then
  arch-chroot /mnt /bin/bash -c "mkdir -p /etc/pipewire"
  cp -rf ./tweaks/pipewire/* /mnt/etc/pipewire/
fi

