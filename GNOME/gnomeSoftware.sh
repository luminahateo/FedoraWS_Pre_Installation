#!/bin/sh



#Graphisme
sudo dnf autoremove -y gnome-photos

#MusiqueVideos
sudo dnf autoremove -y rhythmbox
sudo dnf autoremove -y totem totem-plugins
sudo dnf autoremove -y cheese

#Utilitaire
#sudo dnf autoremove -y gnome-weather
#sudo dnf autoremove -y gnome-clocks
#sudo dnf autoremove -y gnome-contacts
#sudo dnf autoremove -y gnome-dictionary
#sudo dnf autoremove -y gnome-user-docs
#sudo dnf autoremove -y gucharmap gnome-maps

sudo dnf install -y gnome-tweaks 
sudo dnf install -y gnome-extensions-app
