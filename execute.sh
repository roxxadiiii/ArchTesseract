#!/bin/bash

#"WARNING: Executing personal scripts can expose your system to security risks and unintended consequences.
#ure you thoroughly understand the script’s functionality, trust its source, and have backups of important data before proceeding.
#Always review the code and consider the potential impact on your system and data privacy.
#Proceed with caution and at your own risk."
#
#this is a personal project of ADITYA KUMAR gh- https://github.com/roxxamay
#

cat <<"EOF"


░█▀▀▄░█▀▀▄░█▀▄░█░░░░░░▀█▀░█▀▀░█▀▀░█▀▀░█▀▀░█▀▀▄░█▀▀▄░█▀▄░▀█▀
░█▄▄█░█▄▄▀░█░░░█▀▀█░░░░█░░█▀▀░▀▀▄░▀▀▄░█▀▀░█▄▄▀░█▄▄█░█░░░░█░
░▀░░▀░▀░▀▀░▀▀▀░▀░░▀░░░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀▀░▀░░▀░▀▀▀░░▀░


EOF

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀
░█░▀▄░░█▀░░█░
░▀▀▀▀░▀▀▀░░▀░


EOF

echo
echo

# Check if the package is already installed
if pacman -Qi git &>/dev/null; then
	echo "Skipping installation: git is already installed."
else
	echo "Installing git..."
	sudo pacman -S git --noconfirm --needed
fi

echo
echo

cat <<"EOF"

░█▀▀▄░▒█▀▀▄░▒█▀▀▄░▀█▀░▒█▄░▒█░▒█▀▀█░░░▒█▀▀▀░█▀▀▄░▒█░░▒█░░░▒█▀▀▄░▒█▀▀▀░▒█▀▀█░▒█▀▀▀█░▒█▀▀▀█
▒█▄▄█░▒█░▒█░▒█░▒█░▒█░░▒█▒█▒█░▒█░▄▄░░░▒█▀▀░▒█▄▄█░░▒█▒█░░░░▒█▄▄▀░▒█▀▀▀░▒█▄▄█░▒█░░▒█░░▀▀▀▄▄
▒█░▒█░▒█▄▄█░▒█▄▄█░▄█▄░▒█░░▀█░▒█▄▄▀░░░▒█░░░▒█░▒█░░░▀▄▀░░░░▒█░▒█░▒█▄▄▄░▒█░░░░▒█▄▄▄█░▒█▄▄▄█


EOF

echo " >>>>   CLONING UNIREPO FROM GIT"
git clone https://github.com/roxxamay/UniRepo.git
echo
orignal_dir=$(pwd)
echo ">>>>    CHANGING DIRECTORY TO THE SCRIPT"
cd UniRepo
echo
echo ">>>>    EXECUTING SCRIPT"
bash installKeyrings.sh
cd "$orignal_dir"
echo
echo

cat <<"EOF"

░█░▒█░▄▀▀▄░█▀▄░█▀▀▄░▀█▀░░▀░░█▀▀▄░█▀▀▀░░░█▀▀▄░█▀▀░▄▀▀▄░▄▀▀▄░█▀▀
░█░▒█░█▄▄█░█░█░█▄▄█░░█░░░█▀░█░▒█░█░▀▄░░░█▄▄▀░█▀▀░█▄▄█░█░░█░▀▀▄
░░▀▀▀░█░░░░▀▀░░▀░░▀░░▀░░▀▀▀░▀░░▀░▀▀▀▀░░░▀░▀▀░▀▀▀░█░░░░░▀▀░░▀▀▀

EOF

sudo pacman -sy

cat <<"EOF"

░█▀▀▄░█▀▀░█▀▀░█░░█▀▀░█▀▄░▀█▀░▄▀▀▄░█▀▀▄
░█▄▄▀░█▀▀░█▀░░█░░█▀▀░█░░░░█░░█░░█░█▄▄▀
░▀░▀▀░▀▀▀░▀░░░▀▀░▀▀▀░▀▀▀░░▀░░░▀▀░░▀░▀▀

EOF

sudo pacman -S reflector reflector-simple --noconfirm --needed

cat <<"EOF"

░█▀▀░█▀▀▄░█▀▀░▀█▀░█▀▀░█▀▀░▀█▀░░░█▀▄▀█░░▀░░█▀▀▄░█▀▀▄░▄▀▀▄░█▀▀▄░█░░░▀░░█▀▀░▀█▀
░█▀░░█▄▄█░▀▀▄░░█░░█▀▀░▀▀▄░░█░░░░█░▀░█░░█▀░█▄▄▀░█▄▄▀░█░░█░█▄▄▀░█░░░█▀░▀▀▄░░█░
░▀░░░▀░░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░░▀░░░░▀░░▒▀░▀▀▀░▀░▀▀░▀░▀▀░░▀▀░░▀░▀▀░▀▀░▀▀▀░▀▀▀░░▀░

EOF

sudo /usr/bin/reflector --score 100 --fastest 10 --number 10 --verbose --save /etc/pacman.d/mirrorlist

cat <<"EOF"

░█░▒█░▄▀▀▄░█▀▀▀░█▀▀▄░█▀▀▄░█▀▄░░▀░░█▀▀▄░█▀▀▀░░░█▀▀░█░░█░█▀▀░▀█▀░█▀▀░█▀▄▀█
░█░▒█░█▄▄█░█░▀▄░█▄▄▀░█▄▄█░█░█░░█▀░█░▒█░█░▀▄░░░▀▀▄░█▄▄█░▀▀▄░░█░░█▀▀░█░▀░█
░░▀▀▀░█░░░░▀▀▀▀░▀░▀▀░▀░░▀░▀▀░░▀▀▀░▀░░▀░▀▀▀▀░░░▀▀▀░▄▄▄▀░▀▀▀░░▀░░▀▀▀░▀░░▒▀

EOF

sudo pacman -Syyu --noconfirm --needed

cat <<"EOF"

░█▀▀▄░█▀▀▄░█▀▀░█▀▀░░░░█▀▄░█▀▀░▄░░░▄░█▀▀░█░
░█▀▀▄░█▄▄█░▀▀▄░█▀▀░▀▀░█░█░█▀▀░░█▄█░░█▀▀░█░
░▀▀▀▀░▀░░▀░▀▀▀░▀▀▀░░░░▀▀░░▀▀▀░░░▀░░░▀▀▀░▀▀

EOF

sudo pacman -S --noconfirm --needed base-devel

cat <<"EOF"

░█▀▀▄░█░▒█░█▀▀▄░░░█░░░░█▀▀░█░░▄▀▀▄░█▀▀░█▀▀▄░░░░░░░░█░░█░█▀▀▄░█░░█
░█▄▄█░█░▒█░█▄▄▀░░░█▀▀█░█▀▀░█░░█▄▄█░█▀▀░█▄▄▀░░░▀▀░░░█▄▄█░█▄▄█░█▄▄█
░▀░░▀░░▀▀▀░▀░▀▀░░░▀░░▀░▀▀▀░▀▀░█░░░░▀▀▀░▀░▀▀░░░░░░░░▄▄▄▀░▀░░▀░▄▄▄▀


EOF

sudo pacman -S yay --noconfirm --needed

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀░█░░░░█░▒█░█▀▀▄░░░░█▀▄░█░░░▀░
░█░▀▄░░█▀░░█░░█▀▀█░█░▒█░█▀▀▄░▀▀░█░░░█░░░█▀
░▀▀▀▀░▀▀▀░░▀░░▀░░▀░░▀▀▀░▀▀▀▀░░░░▀▀▀░▀▀░▀▀▀

EOF

sudo pacman -S github-cli --noconfirm --needed

cat <<"EOF"

░█▀▀▄░█▀▀▄░▄▀▀▄░█░░░█░█▀▀░█▀▀░█▀▀▄
░█▀▀▄░█▄▄▀░█░░█░▀▄█▄▀░▀▀▄░█▀▀░█▄▄▀
░▀▀▀▀░▀░▀▀░░▀▀░░░▀░▀░░▀▀▀░▀▀▀░▀░▀▀

EOF

{

echo "Select the browser you wish to install:"
echo "1) Firefox"
echo "2) Chromium"
echo "3) Brave"
echo "4) Firedragon"
echo "5) Vivaldi"
read -p "Enter the number of your choice: " choice

case $choice in
  1)
    cat << "EOF"

    ░█▀▀░░▀░░█▀▀▄░█▀▀░█▀▀░▄▀▀▄░█░█
    ░█▀░░░█▀░█▄▄▀░█▀▀░█▀░░█░░█░▄▀▄
    ░▀░░░▀▀▀░▀░▀▀░▀▀▀░▀░░░░▀▀░░▀░▀


    EOF
    sudo pacman -S firefox
    ;;
  2)
    cat << "EOF"
    
    ░█▀▄░█░░░░█▀▀▄░▄▀▀▄░█▀▄▀█░░▀░░█░▒█░█▀▄▀█
    ░█░░░█▀▀█░█▄▄▀░█░░█░█░▀░█░░█▀░█░▒█░█░▀░█
    ░▀▀▀░▀░░▀░▀░▀▀░░▀▀░░▀░░▒▀░▀▀▀░░▀▀▀░▀░░▒▀
    
    EOF
    sudo pacman -S chromium
    ;;
  3)
    cat << "EOF"

    ░█▀▀▄░█▀▀▄░█▀▀▄░▄░░░▄░█▀▀
    ░█▀▀▄░█▄▄▀░█▄▄█░░█▄█░░█▀▀
    ░▀▀▀▀░▀░▀▀░▀░░▀░░░▀░░░▀▀▀

    EOF
    sudo pacman -S chaotic-aur/brave-bin
    ;;
  4)
    cat << "EOF"

    ░█▀▀░░▀░░█▀▀▄░█▀▀░█▀▄░█▀▀▄░█▀▀▄░█▀▀▀░▄▀▀▄░█▀▀▄
    ░█▀░░░█▀░█▄▄▀░█▀▀░█░█░█▄▄▀░█▄▄█░█░▀▄░█░░█░█░▒█
    ░▀░░░▀▀▀░▀░▀▀░▀▀▀░▀▀░░▀░▀▀░▀░░▀░▀▀▀▀░░▀▀░░▀░░▀

    EOF
    sudo pacman -S chaotic-aur/firedragon
    ;;
  5)
    cat << "EOF"

    ░▄░░░▄░░▀░░▄░░░▄░█▀▀▄░█░░█▀▄░░▀░
    ░░█▄█░░░█▀░░█▄█░░█▄▄█░█░░█░█░░█▀
    ░░░▀░░░▀▀▀░░░▀░░░▀░░▀░▀▀░▀▀░░▀▀▀


    EOF
    yay -S vivaldi
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

echo "Installation complete."

}


cat <<"EOF"

░█▀▀▄░█▀▀░▄▀▀▄░▄░░░▄░░▀░░█▀▄▀█
░█░▒█░█▀▀░█░░█░░█▄█░░░█▀░█░▀░█
░▀░░▀░▀▀▀░░▀▀░░░░▀░░░▀▀▀░▀░░▒▀

EOF

sudo pacman -S neovim --noconfirm --needed

cat <<"EOF"

░█░░█▀▀▄░▀▀█░█░░█░▄░░░▄░░▀░░█▀▄▀█░░
░█░░█▄▄█░▄▀▒░█▄▄█░░█▄█░░░█▀░█░▀░█░░
░▀▀░▀░░▀░▀▀▀░▄▄▄▀░░░▀░░░▀▀▀░▀░░▒▀░░

EOF

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

cat <<"EOF"

░▄░░░▄░░▀░░█▀▀░█░▒█░█▀▀▄░█░░░░█▀▀░▀█▀░█░▒█░█▀▄░░▀░░▄▀▀▄░░░█▀▄░▄▀▀▄░█▀▄░█▀▀
░░█▄█░░░█▀░▀▀▄░█░▒█░█▄▄█░█░░░░▀▀▄░░█░░█░▒█░█░█░░█▀░█░░█░░░█░░░█░░█░█░█░█▀▀
░░░▀░░░▀▀▀░▀▀▀░░▀▀▀░▀░░▀░▀▀░░░▀▀▀░░▀░░░▀▀▀░▀▀░░▀▀▀░░▀▀░░░░▀▀▀░░▀▀░░▀▀░░▀▀▀

EOF

sudo pacman -S visual-studio-code-bin --noconfirm --needed

cat <<"EOF"

░▄░░░▄░█░░█▀▄
░░█▄█░░█░░█░░
░░░▀░░░▀▀░▀▀▀

EOF

sudo pacman -S vlc --noconfirm --needed

cat <<"EOF"

░█▀▀░▄▀▀▄░█▀▀▄░▀█▀░█▀▀
░█▀░░█░░█░█░▒█░░█░░▀▀▄
░▀░░░░▀▀░░▀░░▀░░▀░░▀▀▀

EOF

sudo pacman --noconfirm --needed \
	ttf-anonymous-pro \
	ttf-dejavu \
	ttf-fira-mono \
	ttf-fira-sans \
	ttf-font-awesome \
	ttf-hack \
	ttf-opensans \
	ttf-roboto-mono

cat <<"EOF"

░▀█▀░█░░░░█░▒█░█▀▀▄░█▀▀▄░█▀▀▄░░░▄▀▀▄░█░░█░▒█░█▀▀▀░░▀░░█▀▀▄░█▀▀
░░█░░█▀▀█░█░▒█░█░▒█░█▄▄█░█▄▄▀░░░█▄▄█░█░░█░▒█░█░▀▄░░█▀░█░▒█░▀▀▄
░░▀░░▀░░▀░░▀▀▀░▀░░▀░▀░░▀░▀░▀▀░░░█░░░░▀▀░░▀▀▀░▀▀▀▀░▀▀▀░▀░░▀░▀▀▀

EOF

if pacman -Qi thunar &>/dev/null; then
	echo "thunar is already installed."
	echo "installing thunar essential plugins"
	sudo pacman -S --noconfirm --needed \
		thunar-archive-plugin \
		thunar-volman \
		xarchiver \
		gvfs

else
	echo "Thunar is not installed in system"
fi

cat <<"EOF"

░█░▒█░█▀▀▄░▀▀█░░▀░░▄▀▀▄░░░█▀▀▄░█▀▀▄░█▀▄░░░▀▀█░░▀░░▄▀▀▄
░█░▒█░█░▒█░▄▀▒░░█▀░█▄▄█░░░█▄▄█░█░▒█░█░█░░░▄▀▒░░█▀░█▄▄█
░░▀▀▀░▀░░▀░▀▀▀░▀▀▀░█░░░░░░▀░░▀░▀░░▀░▀▀░░░░▀▀▀░▀▀▀░█░░░

EOF

sudo pacman -S --noconfirm --needed zip unzip

cat <<"EOF"

░█▀▀░░▀░░█▀▀░█░░░
░█▀░░░█▀░▀▀▄░█▀▀█
░▀░░░▀▀▀░▀▀▀░▀░░▀

EOF

sudo pacman -S --noconfirm --needed fish

cat <<"EOF"

░█▀▄░█░░░░█▀▀▄░█▀▀▄░█▀▀▀░░▀░░█▀▀▄░█▀▀▀░░▀░░█▀▀▄░█▀▀▀░░░█▀▄░█▀▀░█▀▀░█▀▀▄░█░▒█░█░░▀█▀░░░█▀▀░█░░░░█▀▀░█░░█░
░█░░░█▀▀█░█▄▄█░█░▒█░█░▀▄░░█▀░█░▒█░█░▀▄░░█▀░█░▒█░█░▀▄░░░█░█░█▀▀░█▀░░█▄▄█░█░▒█░█░░░█░░░░▀▀▄░█▀▀█░█▀▀░█░░█░
░▀▀▀░▀░░▀░▀░░▀░▀░░▀░▀▀▀▀░▀▀▀░▀░░▀░▀▀▀▀░▀▀▀░▀░░▀░▀▀▀▀░░░▀▀░░▀▀▀░▀░░░▀░░▀░░▀▀▀░▀▀░░▀░░░░▀▀▀░▀░░▀░▀▀▀░▀▀░▀▀


EOF

echo " >>>>>   LIST OF AVAILABLE SHELLS IN SYSTEM"
chsh -l
sleep 3
chsh -s /bin/fish root
echo ">>>>> logout to take effect"

cat <<"EOF"

░█▀▀▄░█▀▀░█▀▄▀█░▄▀▀▄░▄░░░▄░░▀░░█▀▀▄░█▀▀▀░░░▀▀█░█▀▀░█░░░░░░█▀▀▄░█▀▀▄░█▀▄░░░░░░▀░░▀█▀░█▀▀░░░▄▀▀▄░█░░█░▒█░█▀▀▀░░▀░░█▀▀▄░█▀▀
░█▄▄▀░█▀▀░█░▀░█░█░░█░░█▄█░░░█▀░█░▒█░█░▀▄░░░▄▀▒░▀▀▄░█▀▀█░░░█▄▄█░█░▒█░█░█░░░░░░█▀░░█░░▀▀▄░░░█▄▄█░█░░█░▒█░█░▀▄░░█▀░█░▒█░▀▀▄
░▀░▀▀░▀▀▀░▀░░▒▀░░▀▀░░░░▀░░░▀▀▀░▀░░▀░▀▀▀▀░░░▀▀▀░▀▀▀░▀░░▀░░░▀░░▀░▀░░▀░▀▀░░░░░░▀▀▀░░▀░░▀▀▀░░░█░░░░▀▀░░▀▀▀░▀▀▀▀░▀▀▀░▀░░▀░▀▀▀

EOF

sudo pacman -Rdd zsh --noconfirm --needed

cat <<"EOF"

░░░▀░█▀▀▄░▄░░░▄░█▀▀▄
░░░█░█▄▄█░░█▄█░░█▄▄█
░█▄█░▀░░▀░░░▀░░░▀░░▀

EOF

sudo pacman --noconfirm --needed -S jdk17-openjdk \
	jre17-openjdk \
	jre17-openjdk-headless

cat <<"EOF"

░█▀▀▄░█▀▀░▀█▀░█▀▀▄░█▀▀░█▀▀▄░█▀▀▄░█▀▀
░█░▒█░█▀▀░░█░░█▀▀▄░█▀▀░█▄▄█░█░▒█░▀▀▄
░▀░░▀░▀▀▀░░▀░░▀▀▀▀░▀▀▀░▀░░▀░▀░░▀░▀▀▀

EOF

sudo pacman -S netbeans

cat <<"EOF"

░░▀░░█▀▀▄░▀█▀░█▀▀░█░░█░░░▀░░░░▀░░░░░▀░░█▀▄░█▀▀░█▀▀▄░░░
░░█▀░█░▒█░░█░░█▀▀░█░░█░░░█▀░░░█░▀▀░░█▀░█░█░█▀▀░█▄▄█░▀▀
░▀▀▀░▀░░▀░░▀░░▀▀▀░▀▀░▀▀░▀▀▀░█▄█░░░░▀▀▀░▀▀░░▀▀▀░▀░░▀░░░

EOF

sudo pacman --noconfirm --needed -S intellij-idea-community-edition

cat <<"EOF"

░█▀▀▄░█░▒█░▀█▀░▄▀▀▄░░░░█▀▄░▄▀▀▄░█░▒█░█▀▀░█▀▀▄░█▀▀░█▀▀█
░█▄▄█░█░▒█░░█░░█░░█░▀▀░█░░░█▄▄█░█░▒█░█▀░░█▄▄▀░█▀▀░█▄▄█
░▀░░▀░░▀▀▀░░▀░░░▀▀░░░░░▀▀▀░█░░░░░▀▀▀░▀░░░▀░▀▀░▀▀▀░░░░█

EOF

sudo pacman --noconfirm --needed -S auto-cpufreq

echo ">>>>> Installing auto-cpufreq in system"
sleep 3
sudo auto-cpufreq --install
