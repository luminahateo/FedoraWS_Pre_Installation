#!/bin/sh

#Mirror Fast
rm /etc/dnf/dnf.conf && cp Extra/dnf.conf /etc/dnf/

#Premiere Mise à jour
dnf upgrade -y

#addonsFedo
dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#Codecs_Media
dnf install -y rpmfusion-free-appstream-data
dnf install -y rpmfusion-nonfree-appstream-data
dnf install -y gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
dnf install -y gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

dnf upgrade -y

#Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak uppade -y
