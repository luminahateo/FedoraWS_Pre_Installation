#!/bin/sh

#Theme Fedora
####################################################################################################################################################################################################################################################################
dnf install -y yaru*
gsettings set org.gnome.desktop.interface icon-theme "Yaru"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
cp Extra/FDSL2.png /usr/share/backgrounds/
URI="file:///usr/share/backgrounds/FDSL2.png"
echo ${URI}
gsettings set org.gnome.desktop.background picture-options 'centered'
gsettings set org.gnome.desktop.background picture-uri "${URI}"
gsettings set org.gnome.desktop.sound theme-name "Yaru"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close:'

dnf copr enable zirix/gdm-wallpaper -y
dnf install -y gdm-wallpaper && set-gdm-wallpaper /usr/share/backgrounds/FDSL.png

#flatpak install flathub org.gtk.Gtk3theme.Yaru-Aqua-dark -y #ThemeUbuntu
flatpak install flathub org.gtk.Gtk3theme.Adwaita-dark -y #ThemeFedoDarkBasic

#ExtensionGNOME
####################################################################################################################################################################################################################################################################

dnf install -y gnome-shell-extension-pop-shell
dnf install -y gnome-shell-extension-pop-shell-shortcut-overrides
dnf install -y gnome-shell-extension-appindicator
dnf install -y gnome-shell-extension-sound-output-device-chooser
dnf install -y gnome-shell-extension-user-theme
