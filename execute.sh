!/bin/bash

#"WARNING: Executing personal scripts can expose your system to security risks and unintended consequences.
#Ensure you thoroughly understand the script’s functionality, trust its source, and have backups of important data before proceeding.
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
echo ">>>>    CHANGING DIRECTORY TO THE SCRIPT"
cd UniRepo
echo
echo ">>>>    EXECUTING SCRIPT"
bash installKeyrings.sh
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
