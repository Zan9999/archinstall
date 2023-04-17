#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed xfce4 xfce4-goodies lightdm lightdm-gtk-greeter"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
