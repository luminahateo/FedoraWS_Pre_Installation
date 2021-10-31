#!/bin/sh

clear
echo "INSTALLATEUR DE FEDORA
################################################################################
Miroir le plus rapide OK
Mise à jour DNF OK
rpmfusion libre et non-libre OK
Codecs multimédia OK
Mise à jour Flatpak OK
Theme Fedora ...
Extension GNOME ...
################################################################################
"
./"GNOME/themeFedoGnome.sh"

clear
echo "INSTALLATEUR DE FEDORA
################################################################################
Miroir le plus rapide OK
Mise à jour DNF OK
rpmfusion libre et non-libre OK
Codecs multimédia OK
Mise à jour Flatpak OK
Theme Fedora OK
Extension GNOME OK
Déinstallation des logiciels natifs non souhaités ...
Déinstallation des extensions natifs non souhaités ...
################################################################################
"

./"GNOME/removeGnomeSoftware.sh"
