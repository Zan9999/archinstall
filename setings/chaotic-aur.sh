#!/bin/bash
arch-chroot /mnt /bin/bash -c "pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com"
arch-chroot /mnt /bin/bash -c "pacman-key --lsign-key FBA220DFC880C036"
arch-chroot /mnt /bin/bash -c "pacman -U --needed --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'"
arch-chroot /mnt /bin/bash -c "echo '[chaotic-aur]' >> /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "echo 'Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf"



