#!/bin/sh

clear
echo "INSTALLATEUR DE FEDORA
################################################################################
Miroir le plus rapide ...
Mise à jour DNF ...
rpmfusion libre et non-libre ...
Codecs multimédia ...
Mise à jour Flatpak ...
"
./"OS/addonsCodecsFedo.sh"

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
Déinstallation des logiciels natifs non souhaités OK
Déinstallation des extensions natifs non souhaités OK
Installation logiciels DNF ...
################################################################################
"
./"OS/logicielsDNF.sh"

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
Déinstallation des logiciels natifs non souhaités OK
Déinstallation des extensions natifs non souhaités OK
Installation logiciels DNF OK
Installation logiciels Flatpak ...
################################################################################
"
./"OS/logicielsFlatpak.sh"

echo "
Voulez-vous redemarrer?
[oui]
[non]
"
read -r reponse

if [ "$reponse" = "oui" ]; then
  sudo reboot
else
  echo "fin de programme"
fi
