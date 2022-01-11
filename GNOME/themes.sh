#!/bin/sh

#Theme Fedora
################################################################################
sudo dnf install -y materia-gtk-theme
#sudo dnf install -y yaru*

sudo cp -R Icons/kora Icons/kora-light Icons/kora-light-panel /usr/share/icons
# sudo cp -R Curseurs/oxy-neon /usr/share/icons

gsettings set org.gnome.desktop.interface icon-theme "kora"
# gsettings set  org.gnome.desktop.interface cursor-theme "oxy-neon"
gsettings set org.gnome.desktop.interface gtk-theme "Materia-dark-compact"

#wallpaper
################################################################################
sudo cp Extra/FDSL.jpg /usr/share/backgrounds/
URI="file:///usr/share/backgrounds/FDSL.jpg"
echo ${URI}

#Parametre interface
################################################################################
gsettings set org.gnome.desktop.background picture-options 'spanned'
gsettings set org.gnome.desktop.background picture-uri "${URI}"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'

#Theme flatpak
################################################################################
flatpak install flathub org.gtk.Gtk3theme.Materia-dark-compact -y
#flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic
#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
