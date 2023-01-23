arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm xorg xorg-server xorg-xinit ttf-ubuntu-font-family gnome gdm firefox"
arch-chroot /mnt /bin/bash -c "systemctl enable gdm"
