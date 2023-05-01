#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb xfce4 file-roller xfce4-goodies lightdm lightdm-gtk-greeter"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
