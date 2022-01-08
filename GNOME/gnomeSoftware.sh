#!/bin/sh



#Graphisme
sudo dnf autoremove -y gnome-photos

#MusiqueVideos
sudo dnf autoremove -y rhythmbox totem totem-plugins cheese

#Utilitaire
#sudo dnf autoremove -y gnome-weather gnome-clocks gnome-contacts gnome-dictionary gnome-user-docs gucharmap gnome-maps
sudo dnf install -y gnome-tweaks gnome-extensions-app gnome-firmware
