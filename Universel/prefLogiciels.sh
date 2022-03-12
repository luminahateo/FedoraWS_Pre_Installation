#!/bin/sh

#Gimp en photoshop
git clone https://github.com/Diolinux/PhotoGIMP
rsync -a PhotoGIMP/.icons/ ~/.icons
rsync -a PhotoGIMP/.local/share/applications/org.gimp.GIMP.desktop ~/.local/share/applications/
rsync -a PhotoGIMP/.local/share/icons/ ~/.local/share/icons/
rsync -a PhotoGIMP/.var/ ~/.var/

#Powerline config
cp bashrc ~/.bashrc
