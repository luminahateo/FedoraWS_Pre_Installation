#!/bin/sh

echo "INSTALLATEUR DE FEDORA
=======================================================================
Logiciels Flatpak ...
=======================================================================
"
./flatpak.sh
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
Preferences logiciels ...
=======================================================================
"
./"Extra/preLogiciels.sh"

clear
echo "INSTALLATEUR DE FEDORA
======================================================================

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

.................. INSTALLATION FEDORA TERMINEE .......................

======================================================================="
