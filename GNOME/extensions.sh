#!/bin/sh

#ExtensionGNOME
################################################################################
sudo dnf install -y gnome-shell-extension-pop-shell
sudo dnf install -y gnome-shell-extension-appindicator
sudo dnf install -y gnome-shell-extension-sound-output-device-chooser

sudo dnf autoremove -y gnome-shell-extension-background-logo
sudo dnf autoremove -y gnome-shell-extension-apps-menu
sudo dnf autoremove -y gnome-shell-extension-launch-new-instance
sudo dnf autoremove -y gnome-shell-extension-window-list
