# ArchInstall
A fork created by Barry with actions divided into different scripts

## What has been redone

- Created a separate script for legacy and uefi bios
- Created scripts for installation DE and drivers(used modesettings drivers according to arch wiki)
- Added a script for installing a fully configured i3-wm
- Cut out the disk layout (Done via [btrfscreate](https://github.com/Boria138/btrfscreate))
- Added a script for auto-adding chaotic-aur repository

**Attention run only in chroot(arch-chroot /mnt)!**
