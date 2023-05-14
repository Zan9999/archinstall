# Arch Install script based on [linuxshef script](https://github.com/linuxshef/archinstall)

## What has been redone

- Created scripts for installation DE and drivers
- Cut out the disk layout (Done via btrfscreate in settigs folder)
- Add mkinitcpio settings
- Add GRUB settings
- Add drivers autoinstall
- Add CPU ucode autoinstall
- Add my [arch based distro tweaks](https://github.com/Boria138/arch-tweaks) autoinstall

> Note: files not related to Arch Install have been moved to the [dotfiles repository](https://github.com/Boria138/dotfiles/)


## How to use

First, boot with the [last Arch Linux image](https://www.archlinux.org/download/) with a [bootable device](https://wiki.archlinux.org/index.php/USB_flash_installation_media).

Then make sure you have Internet connection on the Arch iso. If you have a wireless connection the [`iwctl`](https://wiki.archlinux.org/index.php/Iwd#iwctl) command might be useful to you. You can also read the [Network configuration](https://wiki.archlinux.org/index.php/Network_configuration) from the Arch Linux guide for more detailed instructions.

Then download the script with from the command line:

    curl -LO boria138.github.io/archinstall/curl

Finally, launch the script:

    sh curl

Then follow the on-screen instructions to completion.
