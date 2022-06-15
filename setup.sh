#!/bin/bash

echo "Hello! Let's Get Started!"

rpm-ostree update

flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak remote-add --if-not-exists --user gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo 

flatpak remove --all

flatpak install --user flathub com.discordapp.Discord com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager com.usebottles.bottles com.visualstudio.code de.haeckerfelix.Fragments org.bluesabre.MenuLibre org.fedoraproject.MediaWriter  org.gnome.Boxes  org.gnome.Calculator  org.gnome.Calendar org.gnome.Characters  org.gnome.Cheese org.gnome.Connections org.gnome.Contacts firefox org.gnome.DejaDup org.gnome.Evince org.gnome.Geary org.gnome.Logs org.gnome.Maps amberol org.gnome.Photos  org.gnome.SoundRecorder org.gnome.TextEditor clapper org.gnome.Todo org.gnome.Weather  org.gnome.baobab org.gnome.clocks   org.gnome.eog  org.gnome.font-viewer org.libreoffice.LibreOffice 

rpm-ostree override remove firefox

echo "Done! Say hello to your new system! (A reboot might be needed)"
