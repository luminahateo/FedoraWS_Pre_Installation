#!/bin/sh

#Graphisme
sudo dnf autoremove -y gnome-photos

#MusiqueVideos
sudo dnf autoremove -y rhythmbox totem totem-plugins cheese

#Utilitaire
sudo dnf autoremove -y gnome-weather gnome-clocks gnome-contacts gnome-dictionary gnome-user-docs gucharmap gnome-maps

#Extensions
sudo dnf autoremove -y gnome-shell-extension-background-logo
sudo dnf autoremove -y gnome-shell-extension-apps-menu
sudo dnf autoremove -y gnome-shell-extension-launch-new-instance
sudo dnf autoremove -y gnome-shell-extension-window-list
