arch-chroot /mnt /bin/bash -c "pacman -S --needed budgie-desktop budgie-screensaver budgie-desktop-view budgie-control-center budgie-backgrounds gnome-terminal lightdm lightdm-gtk-greeter ttf-ubuntu-font-family firefox xorg xorg-server xorg-xinit arc-gtk-theme arc-icon-theme mousepad parole thunar thunar-archive-plugin thunar-volman xfce4-terminal xfce4-taskmanager file-roller tumbler"

arch-chroot /mnt /bin/bash -c "systemctl enable lightdm"
