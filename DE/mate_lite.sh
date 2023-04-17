#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed mate lightdm lightdm-gtk-greeter network-manager-applet"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
