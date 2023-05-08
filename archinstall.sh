#!/bin/bash

#
#  Arch Linux Install (Arch Install)
#------------------------------------------|
#           :
# Author    : Barry
#           :
# Based on  : https://github.com/linuxshef/archinstall
#           :
# License   : LGPL-3.0 (http://opensource.org/licenses/lgpl-3.0.html)
#           :
#----------------------------------------------------------------------|
setfont cyr-sun16
clear
echo '
               ─▄▀─▄▀
               ──▀──▀
               █▀▀▀▀▀█▄
               █░░░░░█─█     Добро пожаловать в программу установки Arch Linux
               ▀▄▄▄▄▄▀▀
                 ────────────────────────────────────────────────────────────────
                     Внимание !  скрипт НЕ создает разделы на диске , разделы вы
                 создаёте сами , поэтому если вы еще не создали разделы - создайте их
                  (Для автоматической разметки диска в папке scripts есть btrfscreate)
              ───────────────────────────────────────────────────────────────────────────
'
sleep 2
clear
echo '
                                    Настройка часового пояса

              .──────────────────────────────────────────────────────────────.
              .                                                              .
              .                                                              .
              .  Настройка региона выставляет часовой пояс и время согласно  .
              .                                                              .
              .                      указанному региону                       .
              .                                                              .
              .  Название региона можно посмотреть в списке регионов или     .
              .                                                              .
              .  ввести вручную , если уже знаете , именно в таком формате   .
              .                                                              .
              .                  Пример -->   Europe/Moscow                  .
              .                                                              .
              .                                                              .
              .──────────────────────────────────────────────────────────────.

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
              .   ** Это важно для дальнейшей установки загрузчика GRUB **  .
              .                                                             .
              .         Например ( sda , sdb, sdc , nvme0n1p )              .
              .                                                             .
              .                                                             .
              .─────────────────────────────────────────────────────────────.
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
                .                   Укажите пароль Root !                   .
                .                                                           .
                .          Внимание ! Запомните логин рут , здесь - root    .
                .                                                           .
                .           И пароль тот который вы сейчас зададите         .
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
              .  Выберите один из вариантов ядра ,для установки системы :    .
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

                                 -> Linux     ( 1 ) "
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
sleep 2
arch-chroot /mnt /bin/bash -c "sed -i s/'#ParallelDownloads = 5'/'ParallelDownloads = 5'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'#VerbosePkgLists'/'VerbosePkgLists'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'#Color'/'Color\nILoveCandy'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i s/'CheckSpace'/'#CheckSpace'/g /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "sed -i '/\[multilib\]/,/Include/''s/^#//' /etc/pacman.conf"
arch-chroot /mnt /bin/bash -c "pacman -Syy --needed --noconfirm bluez-utils bluez grub efibootmgr firefox firefox-i18n-ru networkmanager bash-completion ntfs-3g os-prober xdg-user-dirs xdg-utils realtime-privileges xclip lrzip zip unrar unzip unace p7zip squashfs-tools hunspell qt6-svg gstreamer gst-plugins-bad gst-plugin-pipewire gst-plugins-base gst-plugins-good hunspell-en_us hunspell-ru xorg xorg-server xorg-xinit"
clear
echo '
                                      Chaotic-AUR

              .─────────────────────────────────────────────────────────────────────.
              .                                                                     .
              .                                                                     .
              .               Подключить репозиторий Chaotic-AUR ?                  .
              .                                                                     .
              .                                                                     .
              .─────────────────────────────────────────────────────────────────────.

'
echo -e "\t

                          -> Да     ( 1 )"
echo -e "\t


                          -> Нет   ( 2 )"
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./scripts/chaotic-aur.sh
         ;;
         "2" ) clear
      esac

clear
echo '
                                      Звуковой сервер

              .─────────────────────────────────────────────────────────────────────.
              .                                                                     .
              .                                                                     .
              .       Добро пожаловать в меню установки звукового сервера           .
              .                                                                     .
              .   На этом этапе будет установлен звуковой сервер по вашему выбору   .
              .                                                                     .
              .                                                                     .
              .                                                                     .
              .─────────────────────────────────────────────────────────────────────.

'
echo -e "\t

                          -> PulseAudio ( 1 )"
echo -e "\t


                          -> PipeWire   ( 2 )"
echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm alsa-utils alsa-firmware alsa-card-profiles alsa-plugins pulseaudio pulseaudio-alsa pulseaudio-jack pulseaudio-bluetooth"
         ;;
         "2" ) ./scripts/pipewire.sh
      esac

clear
echo '
────────────────────────────────────────────────────────────────────────────────────────────|

           Пожалуйста подождите , идёт определение драйверов для вашей видеокарты
                                это займет пару мгновений  .......

─────────────────────────────────────────────────────────────────────────────────────|
'
./scripts/install-video-drivers.sh
#clear
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

                          -> Для процессора Intel введите   ( 1 )"
echo -e "\t


                          -> Для процессора AMD введите     ( 2 )"
echo -n "


                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm intel-ucode"
        ;;
         "2" ) arch-chroot /mnt /bin/bash -c "pacman -S --needed --noconfirm amd-ucode"
      esac

clear
echo '
                                   Графическая оболочка
                .────────────────────────────────────────────────────────.
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .               (Для пропуска нажмите 7)                 .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t

                          -> Для установки KDE введите                  ( 1 )"
echo -e "\t

                          -> Для установки GNOME введите                ( 2 )"
echo -e "\t

                          -> Для установки BUDGIE введите               ( 3 )"
echo -e "\t

                          -> Для установки XFCE введите                 ( 4 )"
echo -e "\t

                          -> Для установки CINNAMON введите             ( 5 )"
echo -e "\t

                          -> Для установки MATE введите                 ( 6 )"

echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in

         "1" ) clear ; echo '
                                          KDE
                .────────────────────────────────────────────────────────.
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t

                          -> Для установки KDE введите                  ( 1 )"
echo -e "\t

                          -> Для установки KDE облегченная введите      ( 2 )

                                Без пакета    kde-applicatios"

echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./DE/kde.sh
         ;;
         "2" ) ./DE/kde_lite.sh
         clear
         esac
         ;;
         "2" ) clear ; echo '
                                          GNOME
                .────────────────────────────────────────────────────────.
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t

                          -> Для установки GNOME введите                ( 1 )"
echo -e "\t

                          -> Для установки GNOME облегченная введите    ( 2 )

                                Без пакета gnome-extra"

echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./DE/gnome.sh ; cp -rf ./tweaks/nautilus/* /home/$username/.local/share/nautilus-python/extensions/
         ;;
         "2" ) ./DE/gnome_lite.sh ; cp -rf ./tweaks/nautilus/* /home/$username/.local/share/nautilus-python/extensions/
         clear
         esac
         ;;
         "3" ) clear ; echo '
                                          BUDGIE
                .────────────────────────────────────────────────────────.
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t

                          -> Для установки BUDGIE введите               ( 1 )"
echo -e "\t

                          -> Для установки BUGDIE облегченная введите   ( 2 )

                                Без пакета budgie-extras"

echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./DE/budgie.sh
         ;;
         "2" ) ./DE/budgie_lite.sh
         clear
         esac
         ;;
         "4" ) ./DE/xfce.sh
         ;;
         "5" ) clear ; ./DE/cinnamon.sh
         ;;
         "6" ) clear ; echo '
                                          MATE
                .────────────────────────────────────────────────────────.
                .                                                        .
                .            Теперь выберите один из вариантов           .
                .                                                        .
                .      Для установки нужной вам графической оболочки     .
                .                                                        .
                .                                                        .
                .────────────────────────────────────────────────────────.
'
echo -e "\t

                          -> Для установки MATE введите                 ( 1 )"
echo -e "\t

                          -> Для установки MATE облегченная введите     ( 2 )

                                Без пакета mate-extra"

echo -n "

                          -> Введите значение : "
read main_menu
      case "$main_menu" in
         "1" ) ./DE/mate.sh
         ;;
         "2" ) ./DE/mate_lite.sh
         clear
         esac
         ;;
         "7" ) clear
       esac
clear
#----------------------------Time----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "ln -sf /usr/share/zoneinfo/$region /etc/localtime"
arch-chroot /mnt /bin/bash -c "hwclock --systohc"
#----------------------------Locale----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "sed -i s/'#en_US.UTF-8'/'en_US.UTF-8'/g /etc/locale.gen"
arch-chroot /mnt /bin/bash -c "sed -i s/'#ru_RU.UTF-8'/'ru_RU.UTF-8'/g /etc/locale.gen"
arch-chroot /mnt /bin/bash -c "locale-gen"
arch-chroot /mnt /bin/bash -c "echo 'LANG=ru_RU.UTF-8' > /etc/locale.conf"
arch-chroot /mnt /bin/bash -c "echo 'KEYMAP=ru' >> /etc/vconsole.conf"
arch-chroot /mnt /bin/bash -c "echo 'FONT=cyr-sun16' >> /etc/vconsole.conf"
#----------------------------Network----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "echo $hostname >> /etc/hostname"
arch-chroot /mnt /bin/bash -c "echo '127.0.0.1 localhost' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "echo '::1       localhost' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "echo '127.0.1.1 $hostname.localdomain $hostname' >> /etc/hosts"
arch-chroot /mnt /bin/bash -c "systemctl enable NetworkManager bluetooth"
#----------------------------GRUB----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "grub-install /dev/$disk"
arch-chroot /mnt /bin/bash -c "grub-mkconfig -o /boot/grub/grub.cfg"
#----------------------------initcpio----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "sed -i s/'BINARIES=()'/'BINARIES=(setfont)'/g /etc/mkinitcpio.conf"
arch-chroot /mnt /bin/bash -c "mkinitcpio -P"
#----------------------------Accounts----------------------------------------------------------------------
arch-chroot /mnt /bin/bash -c "useradd -m -G wheel,storage,realtime,rfkill -s /bin/bash $username"
arch-chroot /mnt /bin/bash -c "sed -i s/'# %wheel ALL=(ALL:ALL) ALL'/'%wheel ALL=(ALL:ALL) ALL'/g /etc/sudoers"
echo "$username:$userpassword" | arch-chroot /mnt chpasswd
echo "root:$password" | arch-chroot /mnt chpasswd
cp -rf ./tweaks/general/* /mnt/etc/
clear
echo '
───────────────────────────────────────────────────────────────────────────────────────────────────────────>
░░░░░░░░░░░░▄▄░░░░░░░░░
░░░░░░░░░░░█░░█░░░░░░░░
░░░░░░░░░░░█░░█░░░░░░░░
░░░░░░░░░░█░░░█░░░░░░░░
░░░░░░░░░█░░░░█░░░░░░░░
███████▄▄█░░░░░██████▄░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░              Установка успешно завершена . Сейчас компьютер будет перезагружен .
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█░░░░░░░░░░░░░░█░
▓▓▓▓▓▓█████░░░░░░░░░█░░
██████▀░░░░▀▀██████▀░░░
  <─────────────────────────────────────────────────────────────────────────────────────────────────────────>
'
sleep 3
arch-chroot /mnt /bin/bash -c "exit"
umount -R /mnt
clear
reboot
