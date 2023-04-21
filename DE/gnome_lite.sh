#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed gnome-software-packagekit-plugin gnome gdm gnome-tweaks gnome-usage adwaita-qt5 adwaita-qt6"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
arch-chroot /mnt /bin/bash -c "gsettings set org.gnome.mutter check-alive-timeout 30000"
