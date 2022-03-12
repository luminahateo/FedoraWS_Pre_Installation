#!/bin/sh

#Theme Fedora
################################################################################
#sudo dnf install -y materia-gtk-theme
#sudo dnf install -y yaru*

#Theme icones blue
if [ ! -d "~/.icons" ]; then
  mkdir ~/.icons
fi
cp -R GNOME/Icons/Adwaita-blue ~/.icons/
gsettings set org.gnome.desktop.interface icon-theme "Adwaita-blue"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

#Parametre interface
################################################################################
gsettings set org.gnome.desktop.wm.preferences button-layout ''
