#!/bin/sh

#INSTALLATION FEDORA
####################################################################################################################################################################################################################################################################

#PreInstall_DNF
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

#Logiciels_DNF
####################################################################################################################################################################################################################################################################

#Bureautique
sudo dnf install -y libreoffice elementary-planner dialect foliate apostrophe

#Graphisme
sudo dnf install -y blender inkscape krita scribus gcolor3

#internet
sudo dnf install -y discord firefox thunderbird transmission tor cawbird fillezilla
#sudo rmp -ivh Simplenote-linux-2.18.0-x86_64.rpm #https://simplenote.com/

#Utilitaire_terminal
sudo dnf install -y ytop cmatrix elinks 

#Utilitaire
sudo dnf install -y gparted gnome-tweaks gnome-extensions-app

#Code
sudo dnf install -y godot meld
#sudo dnf install -y lsb-core-noarch && sudo rpm -ivh atom.x86_64.rpm #https://atom.io/

#AudioVideo
sudo dnf install -y vlc soundconverter kdenlive tuxguitar flacon
#sudo rmp -ivh freetube_0.14.0_amd64.rpm #https://freetubeapp.io/

#Jeux
sudo dnf install -y steam minigalaxy lutris

#Logiciels_Flatpak
####################################################################################################################################################################################################################################################################

#PreInstall
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Bureautique
flatpak install -y com.github.junrrein.PDFSlicer

#Internet
flatpak install -y com.tutanota.Tutanota 

#Graphisme
flatpak install -y com.orama_interactive.Pixelorama
flatpak install -y fr.natron.Natron

#Utilitaire
flatpak install -y com.github.tchx84.Flatseal

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

#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic
