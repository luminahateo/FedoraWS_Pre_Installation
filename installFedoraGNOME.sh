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

#Utilitaire_terminal
sudo dnf install -y ytop cmatrix elinks 

#Utilitaire
sudo dnf install -y gparted gnome-tweaks gnome-extensions-app

sudo dnf install -y powerline powerline-fonts
cp Extra/bashrc ~/.bashrc

#Code
sudo dnf install -y godot meld

#AudioVideo
sudo dnf install -y vlc soundconverter kdenlive tuxguitar flacon

#Jeux
sudo dnf install -y steam minigalaxy lutris

#Logiciels_Flatpak
####################################################################################################################################################################################################################################################################

#PreInstall
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#Bureautique
flatpak install -y com.github.junrrein.PDFSlicer Simplenote

#Internet
flatpak install -y com.tutanota.Tutanota 
flatpak install -y com.github.hugolabe.Wike

#Graphisme
flatpak install -y com.orama_interactive.Pixelorama freetube
flatpak install -y fr.natron.Natron
flatpak install -y org.gnome.design.AppIconPreview


#Utilitaire
flatpak install -y com.github.tchx84.Flatseal 
flatpak install -y com.github.alexhuntley.Plots


#Programmation
flatpak instll -y io.atom.Atom

#AudioVideo
flatpak install -y com.github.huluti.Curtail
flatpak install -y flathub com.github.taiko2k.tauonmb
flatpak install -y com.spotify.Client 
flatpak install -y org.gnome.Podcasts
flatpak install -y org.famistudio.FamiStudio
flatpak install -Y com.github.geigi.cozy
flatpak install -y de.haeckerfelix.Shortwave

flatpak install -y com.bitwig.BitwigStudio

#Jeux
flatpak install -y org.openmw.OpenMW

#Theme Fedora
####################################################################################################################################################################################################################################################################

sudo dnf install -y yaru*
gsettings set org.gnome.desktop.interface icon-theme "Yaru"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic


#ExtensionGNOME
####################################################################################################################################################################################################################################################################

sudo dnf install -y gnome-shell-extension-pop-shell 
sudo dnf install -y gnome-shell-extension-pop-shell-shortcut-overrides
sudo dnf install -y gnome-shell-extension-appindicator
sudo dnf install -y gnome-shell-extension-sound-output-device-chooser
#sudo dnf install -y gnome-shell-extension-user-theme
