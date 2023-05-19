#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed python-nautilus gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb gnome gdm gnome-tweaks power-profiles-daemon switcheroo-control gnome-browser-connector"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
sleep 3
arch-chroot /mnt /bin/bash -c "gsettings set org.gnome.mutter check-alive-timeout 15000"
