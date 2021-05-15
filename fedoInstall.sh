#!/bin/sh

#INSTALLATION FEDORA
####################################################################################################################################################################################################################################################################

#PreInstall
sudo dnf update -y
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf update -y
echo "PréInstallation OK" >> .suivisInstall.txt

#Codecs
sudo dnf install rpmfusion-free-appstream-data && sudo dnf install rpmfusion-nonfree-appstream-data
sudo dnf install gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly
sudo dnf install gstreamer1-plugins-{base,good,bad-free,good-extras,bad-free-extras} gstreamer1-plugin-mpg123
sudo dnf install gstreamer1-libav gstreamer1-plugins-{bad-freeworld,ugly}

#Logiciels_DNF
####################################################################################################################################################################################################################################################################
#Bureautique
sudo dnf install libreoffice* -y 
echo "Logiciel_DNF Bureautique OK" >> .suivisInstall.txt

#Graphisme
sudo dnf install blender inkscape krita -y
echo "Logiciel_DNF Graphisme OK" >> .suivisInstall.txt

#internet
sudo dnf install discord firefox thunderbird uget transmission -y 
echo "Logiciel_DNF Internet OK" >> .suivisInstall.txt

#Utilitaire
sudo dnf install VirtualBox wine ytop gparted gnome-tweaks gnome-extensions-app -y 
systemctl restart systemd-modules-load.service
echo "Logiciel_DNF Utilitaire OK" >> .suivisInstall.txt

#Code
sudo dnf install godot -y
echo "Logiciel_DNF Code OK" >> .suivisInstall.txt

#AudioVideo
sudo dnf install vlc soundconverter kdenlive tuxguitar -y
echo "Logiciel_DNF AndioVideo OK" >> .suivisInstall.txt

#Jeux
sudo dnf install steam minigalaxy openmw -y
echo "Logiciel_DNF Jeux OK" >> .suivisInstall.txt

#Logiciels_Flatpak
####################################################################################################################################################################################################################################################################

#Bureautique
flatpak install Planner Dialect Foliate Simplenote Apostrophe -y
flatpak install flathub com.github.junrrein.PDFSlicer
flatpak install flathub com.github.taiko2k.tauonmb
echo "Logiciel_Flatpak Bureautique OK" >> .suivisInstall.txt

#Graphisme
flatpak install Pixelorama Tutanota Natron Blender Identity Inkscape Kdenlive Krita Scribus -y
flatpak install flathub nl.hjdskes.gcolor3
echo "Logiciel_Flatpak Graphisme OK" >> .suivisInstall.txt

#Internet
flatpak install Discord Tor Thunderbird Tangram -y
echo "Logiciel_Flatpak Internet OK" >> .suivisInstall.txt

#Utilitaire
flatpak install Flatseal -y
echo "Logiciel_Flatpak Utilitaire OK" >> .suivisInstall.txt

#Code
flatpak install Atom Meld Godot -y
echo "Logiciel_Flatpak Code OK" >> .suivisInstall.txt

#AudioVideo
flatpak install TuxGuitar flacon Curtail Blanket RawTherapee Spotify Shortwave FreeTube FamiStudio -y 
flatpak install flathub com.bitwig.BitwigStudio -y
echo "Logiciel_Flatpak AudioVideo OK" >> .suivisInstall.txt

#Jeux
flatpak install Minecraft Steam Minigalaxy OpenMW -y
echo "Logiciel_Flatpak Jeux OK" >> .suivisInstall.txt


#Theme Fedora
####################################################################################################################################################################################################################################################################

sudo dnf install 
flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y
echo "theme Flatpak OK" >> .suivisInstall.txt

cat .suivisInstall.txt 
