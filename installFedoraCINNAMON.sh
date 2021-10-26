#!/bin/sh

#INSTALLATION FEDORA
####################################################################################################################################################################################################################################################################

#PreInstall_DNF
sudo dnf autoremove -y dnfdragora
sudo dnf install -y gnome-software gnome-packagekit

sudo rm /etc/dnf/dnf.conf && sudo cp Extra/dnf.conf /etc/dnf/

sudo dnf update -y
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade -y

#Codecs_Media
sudo dnf install -y rpmfusion-free-appstream-data
sudo dnf install -y rpmfusion-nonfree-appstream-data
sudo dnf install -y gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
sudo dnf install -y gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
sudo dnf install -y gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

sudo dnf update -y


#Logiciels_DNF
####################################################################################################################################################################################################################################################################

#Bureautique
sudo dnf install -y libreoffice dialect foliate apostrophe

#Graphisme
sudo dnf autoremove -y eom
sudo dnf install -y blender inkscape krita scribus gimp shotwell

#internet
sudo dnf install -y discord firefox thunderbird transmission tor filezilla

#Utilitaire_terminal
sudo dnf install -y ytop cmatrix elinks speedtest-cli 

#Utilitaire
sudo dnf autoremove -y onboard
sudo dnf install -y powerline powerline-fonts
cp Extra/bashrc ~/.bashrc

#Code
sudo dnf install -y godot meld

#AudioVideo
sudo dnf autoremove -y rhythmbox xawtv parole xfburn
sudo dnf install -y vlc soundconverter kdenlive flacon brasero

#Jeux
sudo dnf install -y steam minigalaxy lutris

#Logiciels_Flatpak
####################################################################################################################################################################################################################################################################

#PreInstall
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Bureautique
flatpak install -y com.simplenote.Simplenote
flatpak install -y com.github.alainm23.planner

#Internet
flatpak install -y com.tutanota.Tutanota

#Graphisme
flatpak install -y com.orama_interactive.Pixelorama
flatpak install -y io.freetubeapp.FreeTube
flatpak install -y fr.natron.Natron
flatpak install -y org.gnome.design.AppIconPreview

#Utilitaire
flatpak install -y com.github.tchx84.Flatseal
flatpak install -y com.github.alexhuntley.Plots
flappak install -y org.x.Warpinator

#Programmation
flatpak install -y io.atom.Atom

#AudioVideo
flatpak install -y com.github.huluti.Curtail
flatpak install -y flathub com.github.taiko2k.tauonmb
flatpak install -y com.spotify.Client
flatpak install -y org.gnome.Podcasts
flatpak install -y org.famistudio.FamiStudio
flatpak install -y com.bitwig.BitwigStudio

#Jeux
flatpak install -y org.openmw.OpenMW

#Theme Fedora
####################################################################################################################################################################################################################################################################
flatpak install flathub org.gtk.Gtk3theme.Mint-Y-Dark-Aqua -y 

sudo reboot
