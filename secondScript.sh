#!/bin/sh

echo "INSTALLATEUR DE FEDORA
=======================================================================
Logiciels Flatpak ...
=======================================================================
"
./"Universel/flatpak.sh"
./"Universel/logicielsFlatpak.sh"

echo "INSTALLATEUR DE FEDORA
=======================================================================
Logiciels Flatpak .................................................. OK
Themes Flatpak ...
=======================================================================
"
./"Universel/themesFlatpak.sh"

echo "INSTALLATEUR DE FEDORA
=======================================================================
Logiciels Flatpak .................................................. OK
Themes Flatpak ..................................................... OK
=======================================================================
"

clear
echo "INSTALLATEUR DE FEDORA
======================================================================

.................. INSTALLATION FEDORA TERMINEE .......................

   Si un logiciel ne veut pas passer au theme dark, ouvrir flatseal
   et dans la partie Variables du dit logiciel ajouter
   GTK_THEME=Adwaita-dark
   puis relancer le logiciel

======================================================================="

echo "
=======================================================================
Pret pour le dernier redémarrage
=======================================================================
[O] Oui
[N] Non
"
read -r choix
sudo reboot
