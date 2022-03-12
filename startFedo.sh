#!/bin/sh

clear
if [ ! -f ".firstInstallOK.tmp" ]; then
  echo "

            .';:cccccccccccc:;,.
        .;cccccccccccccccccccccc;.
       .:cccccccccccccccccccccccccc:.
      .;ccccccccccccc;.:dddl:.;ccccccc;.
     .:ccccccccccccc;OWMKOOXMWd;ccccccc:.
     .:ccccccccccccc;OWMKOOXMWd;cccccccc:.
     ,cccccccccccccc;MMM.;cc;;WW::cccccccc,
     :cccccccccccccc;MMM.;cccccccccccccccc:
     :ccccccc;oxOOOo;MMM0OOk.;cccccccccccc:
     cccccc:0MMKxdd:;MMMkddc.;cccccccccccc;
     ccccc:XM0';cccc;MMM.;cccccccccccccccc'
     ccccc;MMo;ccccc;MMW.;ccccccccccccccc;
     ccccc;0MNc.ccc.xMMd:ccccccccccccccc;
     cccccc;dNMWXXXWM0::cccccccccccccc:,
     cccccccc;.:odl:.;cccccccccccccc:,.
     :cccccccccccccccccccccccccccc:'.
     .:cccccccccccccccccccccc:;,..

=======================================================================
Démarrer l'installation de Fedora Workstation?
=======================================================================
[Oui]
[Non]
"
  read -r choix

  if [ "$choix" = "Oui" ]; then
  ./premierScript.sh
  fi
else
  echo "
                
            .';:cccccccccccc:;,.
        .;cccccccccccccccccccccc;.
       .:cccccccccccccccccccccccccc:.
      .;ccccccccccccc;.:dddl:.;ccccccc;.
     .:ccccccccccccc;OWMKOOXMWd;ccccccc:.
     .:ccccccccccccc;OWMKOOXMWd;cccccccc:.
     ,cccccccccccccc;MMM.;cc;;WW::cccccccc,
     :cccccccccccccc;MMM.;cccccccccccccccc:
     :ccccccc;oxOOOo;MMM0OOk.;cccccccccccc:
     cccccc:0MMKxdd:;MMMkddc.;cccccccccccc;
     ccccc:XM0';cccc;MMM.;cccccccccccccccc'
     ccccc;MMo;ccccc;MMW.;ccccccccccccccc;
     ccccc;0MNc.ccc.xMMd:ccccccccccccccc;
     cccccc;dNMWXXXWM0::cccccccccccccc:,
     cccccccc;.:odl:.;cccccccccccccc:,.
     :cccccccccccccccccccccccccccc:'.
     .:cccccccccccccccccccccc:;,..

=======================================================================
Démarrer la suite de l'installation de Fedora Workstation?
=======================================================================
[Oui]
[Non]
"
  read -r choix
  if [ "$choix" = "Oui" ]; then
  ./secondScript.sh
  fi
fi
