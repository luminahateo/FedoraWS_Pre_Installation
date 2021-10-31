#!/bin/sh

#Graphisme
dnf autoremove -y gnome-photos

#internet
dnf autoremove -y firefox

#MusiqueVideos
dnf autoremove -y rhythmbox totem totem-plugins cheese

#Utilitaire
dnf autoremove -y gnome-weather gnome-clock gnome-contacts gnome-dictionary gnome-user-docs gucharmap

#Extensions
