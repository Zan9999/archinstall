#!/bin/bash

#
#  Arch Linux Install (Archinstall)
#------------------------------------------|
#           :
# Author    : Forked by Barry
#           :
# Based on  : https://github.com/linuxshef/archinstall
#           :
# License   : LGPL-3.0 (http://opensource.org/licenses/lgpl-3.0.html)
#           :
#----------------------------------------------------------------------|
clear
echo '
 $$$$$$\                      $$\       $$\                       $$\               $$\ $$\
$$  __$$\                     $$ |      \__|                      $$ |              $$ |$$ |
$$ /  $$ | $$$$$$\   $$$$$$$\ $$$$$$$\  $$\ $$$$$$$\   $$$$$$$\ $$$$$$\    $$$$$$\  $$ |$$ |
$$$$$$$$ |$$  __$$\ $$  _____|$$  __$$\ $$ |$$  __$$\ $$  _____|\_$$  _|   \____$$\ $$ |$$ |
$$  __$$ |$$ |  \__|$$ /      $$ |  $$ |$$ |$$ |  $$ |\$$$$$$\    $$ |     $$$$$$$ |$$ |$$ |
$$ |  $$ |$$ |      $$ |      $$ |  $$ |$$ |$$ |  $$ | \____$$\   $$ |$$\ $$  __$$ |$$ |$$ |
$$ |  $$ |$$ |      \$$$$$$$\ $$ |  $$ |$$ |$$ |  $$ |$$$$$$$  |  \$$$$  |\$$$$$$$ |$$ |$$ |
\__|  \__|\__|       \_______|\__|  \__|\__|\__|  \__|\_______/    \____/  \_______|\__|\__|


'
sleep 2
clear
echo '
                                    ArchInstall
         ─────────────────────────────────────────────────────────────────────────


                 ██╗      ██████╗  █████╗ ██████╗ ██╗███╗   ██╗ ██████╗
                 ██║     ██╔═══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝
                 ██║     ██║   ██║███████║██║  ██║██║██╔██╗ ██║██║  ███╗
                 ██║     ██║   ██║██╔══██║██║  ██║██║██║╚██╗██║██║   ██║
                 ███████╗╚██████╔╝██║  ██║██████╔╝██║██║ ╚████║╚██████╔╝██╗██╗██╗
                 ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝╚═╝╚═╝


         ─────────────────────────────────────────────────────────────────────────
'
setfont cyr-sun16
clear
echo '
                                    Настройка часового пояса

              .──────────────────────────────────────────────────────────────.
              .                                                              .
              .                                                              .
              .  Настройка региона выставляет часовой пояс и время согласно  .
              .                                                              .
              .                      указаному региону                       .
              .                                                              .
              .  Название региона можно посмотреть в списке регионов или     .
              .                                                              .
              .  ввести вручную , если уже знаете , именно в таком формате   .
              .                                                              .
              .                  Пример -->   Europe/Moscow                 .
              .                                                              .
              .                                                              .
              .──────────────────────────────────────────────────────────────.

                              Выберите один из варинтов :

'
read -p "
                        -> Введите значение : " region

clear
echo '
                                      Выбор диска

              .─────────────────────────────────────────────────────────────.
              .                                                             .
              .                                                             .
              .             Введите имя диска для разметки                  .
              .                                                             .
              .   ** Это важно для дальнейщей установки загрузчика GRUB **  .
              .                                                             .
              .         Например ( sda , sdb, sdc , nvme0n1p )              .
              .                                                             .
              .                                                             .
              ──────────────────────────────────────────────────────────────.
'
read -p "
                        -> Введите значение : " disk
clear
echo '
                                        Имя хоста
                .───────────────────────────────────────────────────────────.
                .                                                           .
                .                                                           .
                .                   Укажите имя хоста                       .
                .                                                           .
                .───────────────────────────────────────────────────────────.
'
read -p "
                    -> Введите имя хоста:  " hostname
clear

echo '
                                        Пароль root
                .───────────────────────────────────────────────────────────.
                .                                                           .
                .                                                           .
                .                   Укажите пароль Root !                    .
                .                                                           .
                .          Внимание ! Запомните логин рут , здесь - root    .
                .                                                           .
                .              И пароль тот который вы щас зададите         .
                .                                                           . 
                .───────────────────────────────────────────────────────────.
'
read -p "
                    -> Введите пароль root :  " password
clear
echo '

                                Учетная запись пользователя
                .───────────────────────────────────────────────────────────.
                .                                                           .
                .                                                           .
                .           Введите имя вашей учетной записи                .
                .                                                           .
                .                                                           .
                .───────────────────────────────────────────────────────────.
'
read -p "
                    -> Введите имя учетной записи :  " username
clear
echo '
                             Пароль учетной записи пользователя
                .───────────────────────────────────────────────────────────.
                .                                                           .
                .                                                           .
                .           Укажите пароль вашей учетной записи             .
                .                                                           .
                .                                                           .
                .───────────────────────────────────────────────────────────.
'
read -p "
                    -> Введите пароль пользователя :  " userpassword
clear

echo '
                                     Выбор ядра системы
              .──────────────────────────────────────────────────────────────.
              .                                                              .
              .                                                              .
              .  Выберите один из варинтов ядра ,для установки системы :     .
              .                                                              .
              .   -> С обычным ядром Linux - введите 1                       .
              .                                                              .
              .   -> C производительным ядром Linux-zen - введите 2          .
              .                                                              .
              .   -> С ядром повышеной стабильности Linux-lts - введите 3    .
              .                                                              .
              .                                                              .
              .──────────────────────────────────────────────────────────────.
'
echo -e "\t
                                 -> Linux ( 1 ) "
echo -e "\t
                                 -> Linux-zen ( 2 )"
echo -e "\t
                                 -> Linux-lts ( 3 )"
echo -n "
                                 -> Введите значение : "
read main_menu
      case "$main_menu" in

         "1" ) clear ; pacstrap /mnt base base-devel linux linux-headers linux-firmware dosfstools mtools btrfs-progs iucode-tool archlinux-keyring micro git --noconfirm
         ;;
         "2" ) clear ; pacstrap /mnt base base-devel linux-zen linux-zen-headers linux-firmware dosfstools mtools btrfs-progs iucode-tool archlinux-keyring micro git --noconfirm
         ;;
         "3" ) clear ; pacstrap /mnt base base-devel linux-lts linux-lts-headers linux-firmware dosfstools mtools btrfs-progs iucode-tool archlinux-keyring micro git --noconfirm
      esac

clear
genfstab -U /mnt >> /mnt/etc/fstab
echo '
───────────────────────────────────────────────────────────────|
──────────────────────
────────────────────── ██████╗  █████╗  ██████╗███╗   ███╗ █████╗ ███╗   ██╗
────────────────────── ██╔══██╗██╔══██╗██╔════╝████╗ ████║██╔══██╗████╗  ██║
──▒▒▒▒▒────▄████▄───── ██████╔╝███████║██║     ██╔████╔██║███████║██╔██╗ ██║
─▒─▄▒─▄▒──███▄█▀────── ██╔═══╝ ██╔══██║██║     ██║╚██╔╝██║██╔══██║██║╚██╗██║
─▒▒▒▒▒▒▒─▐████──█──█── ██║     ██║  ██║╚██████╗██║ ╚═╝ ██║██║  ██║██║ ╚████║
─▒▒▒▒▒▒▒──█████▄────── ╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝
─▒─▒─▒─▒───▀████▀─────────────────────────────────────────────────────────────────|

                       Пожалуйста подождите , идет настройка скачивания пакетов,

                                  это займет пару мгновений  .......

              ─────────────────────────────────────────────────────────────────────────────────────|
'
sleep 4
arch-chroot /mnt /bin/bash -c "sed -i s/'#ParallelDownloads = 5'/'ParallelDownloads = 5'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'#VerbosePkgLists'/'VerbosePkgLists'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'#Color'/'Color'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i '/\[multilib\]/,/Include/''s/^#//' /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'# %wheel ALL=(ALL:ALL) ALL'/'%wheel ALL=(ALL:ALL) ALL'/g /etc/sudoers"
arch-chroot /mnt /bin/bash -c "pacman -Syy --needed --noconfirm grub efibootmgr networkmanager bash-completion rsync reflector ntfs-3g xdg-user-dirs xdg-utils realtime-privileges archlinux-keyring"
reflector --sort rate -l 10 --save /etc/pacman.d/mirrorlist
arch-chroot /mnt /bin/bash -c "pacman -Syy"
clear
echo '
                                      Звуковой сервер 

              .──────────────────────────────────────────────────────────────────.
              .                                                                  .
              .                                                                  .
              .     	Добро пожаловать в меню установки звукового сервера      .
              .                                                                  .
              .  На этом этапе будет установлен звуковой сервер по вашему выбору .
              .                                                                  .
              .                                                                  .
              .                                                                  .
              .──────────────────────────────────────────────────────────────────.

'
echo -e "\t
                          -> PulseAudio   ( 1 ) "
echo -e "\t

                          -> PipeWire   ( 2 )  "
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm pulseaudio pulseaudio-alsa pulseaudio-jack pulseaudio-bluetooth"
        ;;
         "2" ) arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm pipewire pipewire-pulse pipewire-alsa pipewire-jack"
      esac

clear
echo '
                                      Chaotic-Aur 

              .───────────────────────────────────────────────────────────────────.
              .                                                                   .
              .                                                                   .
              .     Добро пожаловать в меню установки репозитория chaotic-aur     .
              .                                                                   .
              .    																  .
              .───────────────────────────────────────────────────────────────────.

'
echo -e "\t
                          -> Установить   ( 1 ) "
echo -e "\t

                          -> Не устанавливать   ( 2 )  "
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./settings/chaotic-aur.sh
        ;;
         "2" ) clear
      esac
      
echo '
                                     Драйвера видеокарты

              .─────────────────────────────────────────────────────────────────.
              .                                                                 .
              .                                                                 .
              .     Добро пожаловать в меню установки графических драйверов     .
              .                                                                 .
              .  На этом этапе будут установлены драйверы для вашей видеокарты  .
              .                                                                 .
              .                                                                 .
              .                                                                 .
              .─────────────────────────────────────────────────────────────────.

'
echo -e "\t
                          -> Для графики Intel введите   ( 1 ) "
echo -e "\t

                          -> Для графики AMD введите   ( 2 )  "
echo -e "\t

                          -> Для графики Nvidia введите   ( 3 ) "
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./setings/intel_drivers.sh
        ;;
         "2" ) ./setings/amd_drivers.sh
        ;;
         "3" ) ./setings/nvidia_drivers.sh
      esac

clear

echo '
                                     Микрокод для процессора

              .──────────────────────────────────────────────────────────────────.
              .                                                                  .
              .                                                                  .
              .     Добро пожаловать в меню установки Микрокода для процессора   .
              .                                                                  .
              .  На этом этапе будут установлены Микрокоды для вашего процессора .
              .                                                                  .
              .                                                                  .
              .                                                                  .
              .──────────────────────────────────────────────────────────────────. 

'
echo -e "\t
                          -> Для процессора Intel введите   ( 1 ) "
echo -e "\t

                          -> Для процессора AMD введите   ( 2 )  "
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) arch-chroot /mnt /bin/bash -c "pacman -S intel-ucode --noconfirm"
        ;;
         "2" ) arch-chroot /mnt /bin/bash -c "pacman -S amd-ucode --noconfirm"
      esac

clear
echo '
                                   Графическая оболочка
                .────────────────────────────────────────────────────────.
                .                                                        .
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t
                                 -> KDE ( 1 ) "
echo -e "\t
                                 -> GNOME ( 2 )"
echo -e "\t
                                 -> Budgie( 3 )"
echo -n "
                                 -> Введите значение : "
read main_menu
      case "$main_menu" in

         "1" ) clear ; ./DE/kde.sh
         ;;
         "2" ) clear ; ./DE/gnome.sh
         ;;
         "3" ) clear ; ./DE/budgie.sh
      esac

clear
arch-chroot /mnt /bin/bash -c "ln -sf /usr/share/zoneinfo/$region /etc/localtime"
arch-chroot /mnt /bin/bash -c "hwclock --systohc"
arch-chroot /mnt /bin/bash -c "sed -i s/'#en_US.UTF-8'/'en_US.UTF-8'/g /etc/locale.gen"
arch-chroot /mnt /bin/bash -c "sed -i s/'#ru_RU.UTF-8'/'ru_RU.UTF-8'/g /etc/locale.gen"
arch-chroot /mnt /bin/bash -c "locale-gen"
arch-chroot /mnt /bin/bash -c "echo 'LANG=ru_RU.UTF-8' > /etc/locale.conf"
arch-chroot /mnt /bin/bash -c "echo 'KEYMAP=ru' > /etc/vconsole.conf"
arch-chroot /mnt /bin/bash -c "echo 'FONT=cyr-sun16' >> /etc/vconsole.conf"
arch-chroot /mnt /bin/bash -c "echo $hostname >> /etc/hostname"
arch-chroot /mnt /bin/bash -c "echo '127.0.0.1 localhost' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "echo '::1       localhost' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "echo '127.0.1.1 $hostname.localdomain $hostname' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "grub-install /dev/$disk"
arch-chroot /mnt /bin/bash -c "grub-mkconfig -o /boot/grub/grub.cfg"
arch-chroot /mnt /bin/bash -c "systemctl enable NetworkManager"
arch-chroot /mnt /bin/bash -c "useradd -m -G wheel,storage,realtime -s /bin/bash $username"
arch-chroot /mnt /bin/bash -c "mkinitcpio -P"
echo "$username:$userpassword" | arch-chroot /mnt chpasswd
echo "root:$password" | arch-chroot /mnt chpasswd
clear
echo '

─────────────────────────────────────────────────────────────────────────────────────────────────────────────>
░░░░░░░░░░░░▄▄░░░░░░░░░
░░░░░░░░░░░█░░█░░░░░░░░
░░░░░░░░░░░█░░█░░░░░░░░
░░░░░░░░░░█░░░█░░░░░░░░
░░░░░░░░░█░░░░█░░░░░░░░
███████▄▄█░░░░░██████▄░░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░              Установка успешно завершена . Сейчас компьютер будет перезагружен .
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█████░░░░░░░░░█░░
██████▀░░░░▀▀██████▀░░░░
  <─────────────────────────────────────────────────────────────────────────────────────────────────────────>

'
sleep 5
arch-chroot /mnt /bin/bash -c "exit"
umount -R /mnt
clear
reboot
