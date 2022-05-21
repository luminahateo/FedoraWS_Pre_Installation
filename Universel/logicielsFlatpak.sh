#!/bin/sh

#Logiciels_Flatpak
####################################################################################################################################################################################################################################################################

#MiseAJour
flatpak update -y

#Bureautique
flatpak install -y com.simplenote.Simplenote
flatpak install -y com.github.alainm23.planner

#Internet
flatpak install -y com.tutanota.Tutanota
flatpak install -y de.haeckerfelix.Fragments
flatpak install -y org.gabmus.giara #Reddit
#flatpak install -y im.riot.Riot #Element

#Graphisme
flatpak install -y io.freetubeapp.FreeTube
flatpak install -y com.github.huluti.Curtail
flatpak install -y io.github.lainsce.Emulsion
flatpak install -y org.gustavoperedo.FontDownloader

#Utilitaire
flatpak install -y com.github.tchx84.Flatseal

#Programmation
flatpak install -y io.atom.Atom
flatpak install -y io.github.shiftey.Desktop
flatpak install -y net.sonic_pi.SonicPi
flatpak install -y re.sonny.Workbench

#AudioVideo
flatpak install -y flathub com.github.taiko2k.tauonmb
flatpak install -y com.spotify.Client
flatpak install -y org.famistudio.FamiStudio
flatpak install -y com.bitwig.BitwigStudio
flatpak install -y ar.com.tuxguitar.TuxGuitar
flatpak install -y com.rafaelmardojai.Blanket
flatpak install -y de.haeckerfelix.Shortwave
flatpak install -y io.freetubeapp.FreeTube

#Jeux
flatpak install -y org.openmw.OpenMW

#Utilitaires
flatpak install -y com.mattjakeman.ExtensionManager
flatpak install -y fr.romainvigier.MetadataCleaner

#Maps
flatpak install -y  org.qgis.qgis

#Emulateurs
#flatpak install -y app.xemu.xemu
#flatpak install -y ca._0ldsk00l.Nestopia
#flatpak install -y com.github.shonumi.gbe-plus
#flatpak install -y com.retrodev.blastem
#flatpak install -y com.snes9x.Snes9x
#flatpak install -y dev.bsnes.bsnes
#flatpak install -y net.kuribo64.melonDS
#flatpak install -y net.pcsx2.PCSX2
#flatpak install -y org.DolphinEmu.dolphin-emu
#flatpak install -y org.citra_emu.citra
#flatpak install -y org.desmume.DeSmuME
#flatpak install -y org.duckstation.DuckStation
#flatpak install -y org.yuzu_emu.yuzu
