#!/bin/bash -x

set -e
set -u

sh cores.sh
#xdg-user-dirs-update

sudo pacman -Syuu --noconfirm --needed
sudo pacman -S --noconfirm --needed arch-install-scripts
sudo pacman -S --noconfirm --needed os-prober
sudo pacman -S --noconfirm --needed openssh
sudo systemctl enable sshd
sudo pacman -S --noconfirm --needed dhcpcd
sudo pacman -S --noconfirm --needed networkmanager

sudo pacman -S --noconfirm --needed gnome gnome-extra xorg-server-xwayland
#sudo pacman -S --noconfirm --needed xorg
sudo pacman -S --noconfirm --needed mesa
sudo pacman -S --noconfirm --needed xf86-video-amdgpu
#sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter

sudo pacman -S --noconfirm --needed firewalld
sudo pacman -S --noconfirm --needed adobe-source-sans-pro-fonts
sudo pacman -S --noconfirm --needed cantarell-fonts
sudo pacman -S --noconfirm --needed noto-fonts
sudo pacman -S --noconfirm --needed terminus-font
sudo pacman -S --noconfirm --needed ttf-bitstream-vera
sudo pacman -S --noconfirm --needed ttf-dejavu
sudo pacman -S --noconfirm --needed ttf-droid
sudo pacman -S --noconfirm --needed ttf-inconsolata
sudo pacman -S --noconfirm --needed ttf-liberation
sudo pacman -S --noconfirm --needed ttf-roboto
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family
sudo pacman -S --noconfirm --needed tamsyn-font

sudo pacman -S --noconfirm --needed pulseaudio
sudo pacman -S --noconfirm --needed pulseaudio-alsa
sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed alsa-utils alsa-plugins alsa-lib alsa-firmware
sudo pacman -S --noconfirm --needed gstreamer
sudo pacman -S --noconfirm --needed gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly

# installing bluetooth software
sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-utils
sudo pacman -S --noconfirm --needed blueberry

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service


sudo pacman -S --noconfirm --needed cups cups-pdf
sudo pacman -S --noconfirm --needed ghostscript gsfonts gutenprint
sudo pacman -S --noconfirm --needed gtk3-print-backends
sudo pacman -S --noconfirm --needed libcups
sudo pacman -S --noconfirm --needed hplip
sudo pacman -S --noconfirm --needed system-config-printer

sudo systemctl enable cups.service

sudo pacman -S --noconfirm --needed baobab
sudo pacman -S --noconfirm --needed accountsservice
sudo pacman -S --noconfirm --needed dconf-editor
sudo pacman -S --noconfirm --needed nano
sudo pacman -S --noconfirm --needed traceroute

sudo pacman -S --noconfirm --needed ffmpegthumbnailer
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gnome-keyring
sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed gnome-tweak-tool
sudo pacman -S --noconfirm --needed gtk-engine-murrine
sudo pacman -S --noconfirm --needed gvfs gvfs-mtp
sudo pacman -S --noconfirm --needed kvantum-qt5
#sudo pacman -S --noconfirm --needed kvantum-theme-arc
sudo pacman -S --noconfirm --needed lsb-release
sudo pacman -S --noconfirm --needed mlocate
sudo pacman -S --noconfirm --needed polkit-gnome
sudo pacman -S --noconfirm --needed qt5ct
sudo pacman -S --noconfirm --needed sane
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed screenfetch
sudo pacman -S --noconfirm --needed nautilus-image-converter
sudo pacman -S --noconfirm --needed ipset
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed glances
sudo pacman -S --noconfirm --needed clamtk
sudo pacman -S --noconfirm --needed brasero
sudo pacman -S --noconfirm --needed sysstat
sudo pacman -S --noconfirm --needed screenfetch
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed hexchat
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed p7zip


sudo pacman -S --noconfirm --needed gnome-font-viewer
sudo pacman -S --noconfirm --needed grub-customizer 
sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed nomacs
#sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed net-tools
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed gtop
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed simplescreenrecorder
sudo pacman -S --noconfirm --needed filezilla
sudo pacman -S --noconfirm --needed atom
sudo pacman -S --noconfirm --needed geany
sudo pacman -S --noconfirm --needed meld
sudo pacman -S --noconfirm --needed catfish
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils uudeview arj cabextract file-roller
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed thunderbird
sudo pacman -S --noconfirm --needed qbittorrent
sudo pacman -S --noconfirm --needed neofetch
#sudo pacman -S --noconfirm --needed chromium
#sudo pacman -S --noconfirm --needed libreoffice-fresh
sudo pacman -S --noconfirm --needed mpv
sudo pacman -S --noconfirm --needed arc-gtk-theme
#sudo pacman -S --noconfirm --needed deepin-icon-theme
sudo pacman -S --noconfirm --needed breeze-icons
sudo pacman -S --noconfirm --needed elementary-icon-theme
sudo pacman -S --noconfirm --needed adapta-gtk-theme

sudo pacman -R --noconfirm epiphany

#sh wallpaper.sh

sh samba_install.sh

sh trizen.sh

#sh lightdm.sh

echo "### Installing Vivaldi Snapshot ###"
#sh install-vivaldi.sh

trizen -S --noconfirm --needed --noedit pamac-aur-git
trizen -S --noconfirm --needed --noedit gnome-shell-extension-dash-to-panel-git
trizen -S --noconfirm --needed --noedit ocs-url
#trizen -S --noconfirm --needed --noedit flat-remix
#trizen -S --noconfirm --needed --noedit google-chrome-dev
#trizen -S --noconfirm --needed --noedit vivaldi
#trizen -S --noconfirm --needed --noedit vivaldi-codecs-ffmpeg-extra-bin
trizen -S --noconfirm --needed --noedit realvnc-vnc-server
trizen -S --noconfirm --needed --noedit realvnc-vnc-viewer
#trizen -S --noconfirm --needed --noedit vlc-nightly
#trizen -S --noconfirm --needed --noedit inxi-git
#trizen -S --noconfirm --needed --noedit gnome-shell-extension-dash-to-panel

#sh gnome_custom_desktop.sh

#sudo /usr/bin/vnclicense -add P98BK-34AF4-V2K63-TMBH8-BYNRA

sudo systemctl enable vncserver-x11-serviced

sudo systemctl enable NetworkManager

sudo systemctl enable gdm
