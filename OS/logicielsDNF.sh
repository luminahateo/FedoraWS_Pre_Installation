#!/bin/sh

#Bureautique
sudo dnf install -y libreoffice libreoffice-grammalecte libreoffice-graphicfilter
sudo dnf install -y dialect
sudo dnf install -y pdfarranger

#Graphisme
sudo dnf install -y blender
sudo dnf install -y inkscape inkscape-view inkscape-psd
sudo dnf install -y krita
#sudo dnf install -y scribus
sudo dnf install -y shotwell

#internet
sudo dnf install -y discord
sudo dnf install -y telegram-desktop
sudo dnf install -y chatterino2
sudo dnf install -y streamlink
sudo dnf install -y thunderbird
sudo dnf install -y tor
sudo dnf install -y filezilla

#Brave
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

#Utilitaire_terminal
sudo dnf copr enable atim/ytop -y
sudo dnf install -y ytop

sudo dnf install -y bat
sudo dnf install -y cmatrix
sudo dnf install -y links
sudo dnf install -y speedtest-cli
sudo dnf install -y neofetch
sudo dnf install -y cpufetch
sudo dnf install -y ranger
#sudo dnf install -y cool-retro-term
#hyper.js à dl


#Utilitaire
sudo dnf install -y powerline powerline-fonts
#Powerline config
cp bashrc ~/.bashrc

sudo dnf install -y bleachbit
sudo dnf install -y rpi-imager
sudo dnf install -y dl-fedora
sudo dnf install -y gparted
sudo dnf install -y gnome-pomodoro

#Maps
#sudo dnf install -y qgis (Flatpak prévilègié pour dernière version)

#Code
sudo dnf install -y godot

#AudioVideo
sudo dnf install -y audacity audacity-manual audacity-freeworld
sudo dnf install -y sound-juicer
sudo dnf install -y vlc vlc-extras
sudo dnf install -y soundconverter
sudo dnf install -y brasero brasero-nautilus

#Jeux
sudo dnf install -y steam
sudo dnf install -y minigalaxy
