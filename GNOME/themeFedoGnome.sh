#!/bin/sh

#Theme Fedora
####################################################################################################################################################################################################################################################################
sudo dnf install -y yaru*
gsettings set org.gnome.desktop.interface icon-theme "Yaru"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
sudo cp Extra/FDSL2.png /usr/share/backgrounds/
URI="file:///usr/share/backgrounds/FDSL2.png"
echo ${URI}
gsettings set org.gnome.desktop.background picture-options 'centered'
gsettings set org.gnome.desktop.background picture-uri "${URI}"
gsettings set org.gnome.desktop.sound theme-name "Yaru"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'

sudo dnf copr enable zirix/gdm-wallpaper
sudo dnf install -y gdm-wallpaper && sudo set-gdm-wallpaper /usr/share/backgrounds/FDSL.png

#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic

#ExtensionGNOME
####################################################################################################################################################################################################################################################################

sudo dnf install -y gnome-shell-extension-pop-shell
sudo dnf install -y gnome-shell-extension-pop-shell-shortcut-overrides
sudo dnf install -y gnome-shell-extension-appindicator
sudo dnf install -y gnome-shell-extension-sound-output-device-chooser
sudo dnf install -y gnome-shell-extension-user-theme