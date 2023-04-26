#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb mate mate-extra lightdm lightdm-gtk-greeter network-manager-applet"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
