#!/bin/sh

#Theme Fedora
################################################################################
sudo dnf install -y yaru*
gsettings set org.gnome.desktop.interface icon-theme "Yaru"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

#wallpaper
################################################################################
sudo cp Extra/FDSL2.png /usr/share/backgrounds/
URI="file:///usr/share/backgrounds/FDSL2.png"
echo ${URI}

#Parametre interface
################################################################################
gsettings set org.gnome.desktop.background picture-options 'centered'
gsettings set org.gnome.desktop.background picture-uri "${URI}"
gsettings set org.gnome.desktop.sound theme-name "Yaru"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'

#GDM
################################################################################
sudo dnf copr enable zirix/gdm-wallpaper -y
sudo dnf install -y gdm-wallpaper && set-gdm-wallpaper /usr/share/backgrounds/FDSL.png

#Theme flatpak
################################################################################
flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic
#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
