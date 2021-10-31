#!/bin/sh

clear
echo "INSTALLATEUR DE FEDORA
################################################################################"

sudo -i

echo "
INSTALLATEUR FEDORA
   [1] gnome
   [2] cinnamon
   [0] fin de programme
"
read -r choix

./"OS/fedora.sh"

if [ "$choix" = "0" ]; then
  echo "fin de programme"
elif [ "$choix" = "1" ]; then
  ./"GNOME/gnome.sh"
elif [ $choix = "2" ]; then
  ./"CINNAMON/cinnamon.sh"
else
  ./startFedo.sh
fi
