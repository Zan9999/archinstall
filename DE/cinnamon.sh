#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb cinnamon cinnamon-control-center nemo-fileroller nemo-preview cinnamon-translations gucharmap xed lightdm lightdm-gtk-greeter parole xfce4-terminal xfce4-taskmanager network-manager-applet gthumb metacity blueberry gnome-shell"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
