#!/bin/bash

#"WARNING: Executing personal scripts can expose your system to security risks and unintended consequences.
#ure you thoroughly understand the script’s functionality, trust its source, and have backups of important data before proceeding.
#Always review the code and consider the potential impact on your system and data privacy.
#Proceed with caution and at your own risk."
#
#this is a personal project of ADITYA KUMAR gh- https://github.com/roxxamay
#

tput setaf 5

cat <<"EOF"

░█░█░█▀▀░█▀▄░█▀▀
░▄▀▄░█▀░░█░░░█▀▀
░▀░▀░▀░░░▀▀▀░▀▀▀

EOF

sudo pacman -S  xfce4 xfce4-goodies --noconfirm --needed

cat <<"EOF"

░█▀▀░█▀▄░█▀▄░█▀▄▀█
░▀▀▄░█░█░█░█░█░▀░█
░▀▀▀░▀▀░░▀▀░░▀░░▒▀

EOF

sudo pacman -S sddm --noconfirm --needed

cat <<"EOF"

░█▀▀▄░█░░█▀▀▄░█▀▄░█▀▀▄░░▀░░▀█▀░▀█▀░█░░█
░█▄▄█░█░░█▄▄█░█░░░█▄▄▀░░█▀░░█░░░█░░█▄▄█
░▀░░▀░▀▀░▀░░▀░▀▀▀░▀░▀▀░▀▀▀░░▀░░░▀░░▄▄▄▀

EOF

sudo pacman -S alacritty --noconfirm --needed

cat <<"EOF"

░▀█▀░█░░░░█░▒█░█▀▀▄░█▀▀▄░█▀▀▄
░░█░░█▀▀█░█░▒█░█░▒█░█▄▄█░█▄▄▀
░░▀░░▀░░▀░░▀▀▀░▀░░▀░▀░░▀░▀░▀▀

EOF

sudo pacman -S thunar  thunar-archive-plugin thunar-volman --noconfirm --needed

cat <<"EOF"

░█▀▀▀░▄░░░▄░█▀▀░█▀▀
░█░▀▄░░█▄█░░█▀░░▀▀▄
░▀▀▀▀░░░▀░░░▀░░░▀▀▀

EOF

sudo pacman -S gvfs gvfs-afc gvfs-mtp gvfs-nfs gvfs-smb --noconfirm --needed

cat <<"EOF"

░█▀▀▄░█▀▀░▀█▀░█░░░█░▄▀▀▄░█▀▀▄░█░▄░░░░█▀▄▀█░█▀▀▄░█▀▀▄░█▀▀▄░█▀▀▀░█▀▀░█▀▀▄░░░░█▀▀▄░▄▀▀▄░▄▀▀▄░█░░█▀▀░▀█▀
░█░▒█░█▀▀░░█░░▀▄█▄▀░█░░█░█▄▄▀░█▀▄░▀▀░█░▀░█░█▄▄█░█░▒█░█▄▄█░█░▀▄░█▀▀░█▄▄▀░▀▀░█▄▄█░█▄▄█░█▄▄█░█░░█▀▀░░█░
░▀░░▀░▀▀▀░░▀░░░▀░▀░░░▀▀░░▀░▀▀░▀░▀░░░░▀░░▒▀░▀░░▀░▀░░▀░▀░░▀░▀▀▀▀░▀▀▀░▀░▀▀░░░░▀░░▀░█░░░░█░░░░▀▀░▀▀▀░░▀░

EOF

sudo pacman -S network-manager-applet --noconfirm --needed

cat <<"EOF"

░█▀▀░█▀▀▄░█▀▀▄░█▀▀▄░█░░█▀▀░░░█▀▀▄░█▀▀▄░█▀▄░░░█▀▀░▀█▀░█▀▀▄░█▀▀▄░▀█▀░░░█▀▀░█▀▄░█▀▄░█▀▄▀█
░█▀▀░█░▒█░█▄▄█░█▀▀▄░█░░█▀▀░░░█▄▄█░█░▒█░█░█░░░▀▀▄░░█░░█▄▄█░█▄▄▀░░█░░░░▀▀▄░█░█░█░█░█░▀░█
░▀▀▀░▀░░▀░▀░░▀░▀▀▀▀░▀▀░▀▀▀░░░▀░░▀░▀░░▀░▀▀░░░░▀▀▀░░▀░░▀░░▀░▀░▀▀░░▀░░░░▀▀▀░▀▀░░▀▀░░▀░░▒▀

EOF

sudo systemctl enable sddm
sudo systemctl start sddm