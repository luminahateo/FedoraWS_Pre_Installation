#!/bin/sh

#Bureautique
dnf install -y libreoffice libreoffice-grammalecte libreoffice-graphicfilter
dnf install -y dialect
dnf install -y apostrophe

#Graphisme
dnf install -y blender YafaRay-blender
dnf install -y inkscape inkscape-view inkscape-psd
dnf install -y krita
dnf install -y scribus
dnf install -y shotwell
dnf install -y gimp

git clone https://github.com/Diolinux/PhotoGIMP
mkdir ~/icons
cp -R PhotoGIMP/.icons/ ~/.icons
cp PhotoGIMP/.local/share/applications/org.gimp.GIMP.desktop ~/.local/share/applications/
rsync -a PhotoGIMP/.local/share/icons/ ~/.local/share/icons/
rsync -a PhotoGIMP/.var/ ~/.var/

#internet
dnf install -y firefox-wayland
dnf install -y discord
dnf install -y thunderbird-wayland
dnf install -y transmission transmission-cli
dnf install -y tor onionshare
dnf install -y filezilla

#Utilitaire_terminal
dnf install -y ytop
dnf install -y cmatrix
dnf install -y elinks
dnf install -y speedtest-cli
dnf install -y neofetch

#Utilitaire
#dnf install -y gparted
dnf install -y gnome-tweaks gnome-extensions-app

dnf install -y powerline powerline-fonts
cp Extra/bashrc ~/.bashrcbrasero-nautilus

#Code
dnf install -y godot godot-runner godot-server
#dnf install -y meld

#AudioVideo
dnf install -y vlc vlc-extras
dnf install -y soundconverter
dnf install -y kdenlive
dnf install -y brasero brasero-nautilus

#Jeux
dnf install -y steam
dnf install -y minigalaxy
dnf install -y lutris
