#!/bin/sh

clear
echo "INSTALLATEUR DE FEDORA
################################################################################"

echo "
INSTALLATEUR FEDORA
   [1] gnome
   [2] cinnamon
   [0] fin de programme
"
read -r choix

if [ "$choix" = "0" ]; then
  echo "fin de programme"
fi

if [ ! "$choix" = "1" ] || [ ! "$choix" = "2" ]; then
  ./startFedo.sh
fi


clear
echo "INSTALLATEUR DE FEDORA
################################################################################
Miroir le plus rapide ...
Mise à jour DNF ...
rpmfusion libre et non-libre ...
Codecs multimédia ...
Mise à jour Flatpak ...
" >> interface.tmp
cat interface.tmp

./"OS/addonsCodecsFedo.sh" >> progress.sh

if [ "$choix" = "1" ]; then
  rm interface.tmp
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
  " >> interface.tmp
  cat interface.tmp
  ./"GNOME/themeFedoGnome.sh" >> progress.sh

  rm interface.tmp
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
  " >> interface.tmp
  ./"GNOME/removeGnomeSoftware.sh" >> progress.sh
else
  echo "prochainement ..."
fi

rm interface.tmp
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
" >> interface.tmp
./"OS/logicielsDNF.sh" >> progress.sh

rm interface.tmp
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
" >> interface.tmp
./"OS/logicielsFlatpak.sh" >> progress.sh

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
