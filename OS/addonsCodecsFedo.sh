#!/bin/sh

#Mirror Fast
sudo rm /etc/dnf/dnf.conf && sudo cp Extra/dnf.conf /etc/dnf/

#Premiere Mise à jour
sudo dnf upgrade -y

#addonsFedo
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Codecs_Media
sudo dnf install -y rpmfusion-free-appstream-data
sudo dnf install -y rpmfusion-nonfree-appstream-data
sudo dnf install -y gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
sudo dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
sudo dnf install -y gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

sudo dnf upgrade -y

#Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak uppade -y
