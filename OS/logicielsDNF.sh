#!/bin/sh

#Bureautique
sudo dnf install -y libreoffice libreoffice-grammalecte libreoffice-graphicfilter
sudo dnf install -y dialect
sudo dnf install -y apostrophe

#Graphisme
sudo dnf install -y blender YafaRay-blender
sudo dnf install -y inkscape inkscape-view inkscape-psd
sudo dnf install -y krita
sudo dnf install -y scribus
sudo dnf install -y shotwell
sudo dnf install -y gimp

#internet
sudo dnf install -y firefox-wayland
sudo dnf install -y discord
sudo dnf install -y thunderbird-wayland
sudo dnf install -y transmission transmission-cli
# sudo dnf install -y tor onionshare
sudo dnf install -y filezilla

#Utilitaire_terminal
sudo dnf install -y ytop
sudo dnf install -y cmatrix
sudo dnf install -y elinks
sudo dnf install -y speedtest-cli
sudo dnf install -y neofetch

#Utilitaire
#sudo dnf install -y gparted
sudo dnf install -y gnome-tweaks gnome-extensions-app

sudo dnf install -y powerline powerline-fonts

#Code
sudo dnf install -y godot godot-runner godot-server
#sudo dnf install -y meld

#AudioVideo
sudo dnf install -y vlc vlc-extras
sudo dnf install -y soundconverter
sudo dnf install -y kdenlive
sudo dnf install -y brasero brasero-nautilus

#Jeux
sudo dnf install -y steam
sudo dnf install -y minigalaxy
sudo dnf install -y lutris
