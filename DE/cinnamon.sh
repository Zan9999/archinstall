#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman -S --needed cinnamon cinnamon-control-center nemo-fileroller nemo-preview cinnamon-translations gucharmap xed lightdm lightdm-gtk-greeter parole xfce4-terminal xfce4-taskmanager network-manager-applet gthumb metacity blueberry gnome-shell"
arch-chroot /mnt /bin/bash -c "gsettings set org.cinnamon.muffin check-alive-timeout 30000"
arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
