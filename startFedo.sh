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
elif [ "$choix" = "1" ]; then
  ./gnome.sh
elif [ $choix = "2" ]; then
  ./cinnamon.sh
else
  ./startFedo.sh
fi
