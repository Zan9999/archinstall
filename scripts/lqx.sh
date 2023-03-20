#!/bin/bash

arch-chroot /mnt /bin/bash -c "pacman-key --keyserver hkps://keyserver.ubuntu.com --recv-keys 9AE4078033F8024D"
arch-chroot /mnt /bin/bash -c "pacman-key --lsign-key 9AE4078033F8024D"
arch-chroot /mnt /bin/bash -c echo -e '\n[liquorix]\nServer = https://liquorix.net/archlinux/$repo/$arch' >> /etc/pacman.conf
arch-chroot /mnt /bin/bash -c "pacman -Syy"
