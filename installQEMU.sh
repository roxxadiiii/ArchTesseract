#!/bin/bash

tput setaf 5

cat <<"EOF"

░█▀▀█░█▀▀░█▀▄▀█░█░▒█
░█▄▄█░█▀▀░█░▀░█░█░▒█
░░░░█░▀▀▀░▀░░▒▀░░▀▀▀

EOF

sudo pacman -S --noconfirm --needed dmidecode
sudo pacman -S --noconfirm --needed iptables-nft
sudo pacman -S --noconfirm --needed ebtables
sudo pacman -S --noconfirm --needed qemu-full
sudo pacman -S --noconfirm --needed virt-manager
sudo pacman -S --noconfirm --needed virt-viewer
sudo pacman -S --noconfirm --needed dnsmasq
sudo pacman -S --noconfirm --needed vde2
sudo pacman -S --noconfirm --needed bridge-utils
sudo pacman -S --noconfirm --needed edk2-ovmf

#STARTING SERVICES OF LIBVIRTD SERVICES

sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service

echo -e "options kvm-intel nested=1" | sudo tee -a /etc/modprobe.d/kvm-intel.conf

user=$(whoami)
sudo gpasswd -a $user libvirt
sudo gpasswd -a $user kvm

sudo virsh net-define /etc/libvirt/qemu/networks/default.xml

sudo virsh net-autostart default

sudo systemctl restart libvirtd.service

cat <<"EOF"
░░░░░░░░░░░░░░░░░░░░░▒█▀▀█░▒█░░░░▒█▀▀▀░█▀▀▄░▒█▀▀▀█░▒█▀▀▀░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀▄░▒█▀▀▀█░▒█▀▀▀█░▀▀█▀▀░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░▒█▄▄█░▒█░░░░▒█▀▀▀▒█▄▄█░░▀▀▀▄▄░▒█▀▀▀░░░▒█▄▄▀░▒█▀▀▀░▒█▀▀▄░▒█░░▒█░▒█░░▒█░░▒█░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░▒█░░░░▒█▄▄█░▒█▄▄▄▒█░▒█░▒█▄▄▄█░▒█▄▄▄░░░▒█░▒█░▒█▄▄▄░▒█▄▄█░▒█▄▄▄█░▒█▄▄▄█░░▒█░░░░░░░░░░░░░░░░░░░░░░
      <div>
EOF
