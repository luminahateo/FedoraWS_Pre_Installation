#!/bin/sh

clear
if [ ! -f ".firstInstallOK.tmp" ]; then
  echo "
=======================================================================
Démarrer l'installation de Fedora Workstation?
Elle se fera en deux parties. La première installation mise à jour,
préférences et logiciels DNF, RPM. La seconde après redémarrage sur
Flatpak, Flathub et ces logiciels.  
=======================================================================
[O] Oui
[N] Non
"
  read -r choix

  if [ "$choix" = "O" ]; then
  ./premierScript.sh
  fi
else
  echo "
=======================================================================
Démarrer la suite de l'installation de Fedora Workstation?
=======================================================================
[O] Oui
[N] Non
"
  read -r choix
  if [ "$choix" = "O" ]; then
  ./secondScript.sh
  fi
fi
