#!/bin/bash

#"WARNING: Executing personal scripts can expose your system to security risks and unintended consequences.
#ure you thoroughly understand the script’s functionality, trust its source, and have backups of important data before proceeding.
#Always review the code and consider the potential impact on your system and data privacy.
#Proceed with caution and at your own risk."
#
#this is a personal project of ADITYA KUMAR gh- https://github.com/roxxamay
#

tput setaf 5

#git

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀
░█░▀▄░░█▀░░█░
░▀▀▀▀░▀▀▀░░▀░

EOF

echo
echo

#checking and installing git

if pacman -Qi git &>/dev/null; then
	echo "Skipping installation: git is already installed."
else
	echo "Installing git..."
	sudo pacman -S git --noconfirm --needed
fi

#github-cli
cat <<"EOF"

░█▀▀▀░░▀░░▀█▀░█░░░░█░▒█░█▀▀▄░░░░█▀▄░█░░░▀░
░█░▀▄░░█▀░░█░░█▀▀█░█░▒█░█▀▀▄░▀▀░█░░░█░░░█▀
░▀▀▀▀░▀▀▀░░▀░░▀░░▀░░▀▀▀░▀▀▀▀░░░░▀▀▀░▀▀░▀▀▀

EOF

echo
echo

#checking and installing github-cli

if pacman -Qi github-cli &>/dev/null; then
	echo "Skipping installation: git is already installed."
else
	echo "Installing git..."
	sudo pacman -S github-cli --noconfirm --needed
fi

#login git

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀░░░█░░▄▀▀▄░█▀▀▀░░▀░░█▀▀▄
░█░▀▄░░█▀░░█░░░░█░░█░░█░█░▀▄░░█▀░█░▒█
░▀▀▀▀░▀▀▀░░▀░░░░▀▀░░▀▀░░▀▀▀▀░▀▀▀░▀░░▀

EOF

# Prompt the user for their Git username
read -p "Enter your Git username: " var_name

# Prompt the user for their Git email
read -p "Enter your Git email: " var_email

# Configure Git with the provided username and email
git config --global user.name "$var_name"
git config --global user.email "$var_email"

# Confirm the configuration
echo "Git has been configured with the following details:"
git config --global user.name
git config --global user.email

#github-cli login

cat <<"EOF"

░█▀▀▀░░▀░░▀█▀░█░░░░█░▒█░█▀▀▄░░░░█▀▄░█░░░▀░░░░█░░▄▀▀▄░█▀▀▀░░▀░░█▀▀▄
░█░▀▄░░█▀░░█░░█▀▀█░█░▒█░█▀▀▄░▀▀░█░░░█░░░█▀░░░█░░█░░█░█░▀▄░░█▀░█░▒█
░▀▀▀▀░▀▀▀░░▀░░▀░░▀░░▀▀▀░▀▀▀▀░░░░▀▀▀░▀▀░▀▀▀░░░▀▀░░▀▀░░▀▀▀▀░▀▀▀░▀░░▀

EOF

echo "login with the help of your desired option : "
echo
echo

gh auth login


gh auth setup-git
