#!/bin/sh

#Graphisme
dnf autoremove -y gnome-photos

#internet
dnf autoremove -y firefox

#MusiqueVideos
dnf autoremove -y rhythmbox totem totem-plugins cheese

#Utilitaire
dnf autoremove -y gnome-weather
