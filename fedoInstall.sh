#!/bin/sh

#INSTALLATION FEDORA
####################################################################################################################################################################################################################################################################

sudo dnf update -y

sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf update

#Codecs
sudo dnf install rpmfusion-free-appstream-data && sudo dnf install rpmfusion-nonfree-appstream-data
sudo dnf install gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
sudo dnf install gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
sudo dnf install gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

#Logiciels
####################################################################################################################################################################################################################################################################
#Bureautique
sudo dnf install libreoffice*
sudo dnf install https://github.com/Automattic/simplenote-electron/releases/download/v2.7.0/Simplenote-linux-2.7.0-x86_64.rpm

#Graphisme
sudo dnf install blender inkscape krita gpick

#internet
sudo dnf install discord firefox* thunderbird* uget transmission
sudo flatpak install tutanota

#Utilitaire
sudo dnf install VirtualBox wine* cool-retro-term htop gparted
systemctl restart systemd-modules-load.service
sudo dnf copr enable  tuxino/blanket
sudo dnf install blanket

#Code
sudo dnf install '/home/lumina/Téléchargements/atom.x86_64.rpm' '/home/lumina/Téléchargements/gitkraken-amd64.rpm'
sudo dnf install godot*

#Audio
sudo dnf remove rhythmbox*
sudo dnf install lollypop vlc* lpf-spotify-client soundconverter kdenlive tuxguitar

#Jeux
sudo dnf install steam minigalaxy openmw*
flatpak install minecraft
