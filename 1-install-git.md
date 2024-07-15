```
░▄█░░░░░░▀░░█▀▀▄░█▀▀░▀█▀░█▀▀▄░█░░█░░░░░█▀▀▀░░▀░░▀█▀░░░░█▀▀░█░░░
░░█▒░▀▀░░█▀░█░▒█░▀▀▄░░█░░█▄▄█░█░░█░░▀▀░█░▀▄░░█▀░░█░░▄▄░▀▀▄░█▀▀█
░▄█▄░░░░▀▀▀░▀░░▀░▀▀▀░░▀░░▀░░▀░▀▀░▀▀░░░░▀▀▀▀░▀▀▀░░▀░░▀▀░▀▀▀░▀░░▀

```


### Script Overview

This script automates the installation and configuration of Git and GitHub CLI on Arch Linux systems. It checks if these tools are already installed, installs them if not, and then configures Git with the user's credentials.

### Sections Explained

#### 1. ASCII Art Banners (Lines 3-12, Lines 36-43)

```bash
tput setaf 5
cat <<"EOF"
...
EOF"

tput setaf 5
cat <<"EOF"
...
EOF"
```

- **Purpose**: Enhances the user interface by displaying ASCII art banners at the beginning and end of the script execution. These banners serve as visual indicators of the script's progress.
- **How it works**: Uses ANSI escape codes (`tput setaf 5`) to change the text color to green, followed by printing the ASCII art through a heredoc (`<<"EOF"`).

#### 2. Checking and Installing Git (Lines 26-34)

```bash
if pacman -Qi git &>/dev/null; then
    echo "Skipping installation: git is already installed."
else
    echo "Installing git..."
    sudo pacman -S git --noconfirm --needed
fi
```

- **Purpose**: Checks if Git is already installed on the system and installs it if not.
- **How it works**: Uses `pacman -Qi git` to query the package database for Git. If Git is found, it skips the installation; otherwise, it proceeds with the installation using `sudo pacman -S git --noconfirm --needed`.

#### 3. Checking and Installing GitHub CLI (Lines 47-55)

```bash
if pacman -Qi github-cli &>/dev/null; then
    echo "Skipping installation: git is already installed."
else
    echo "Installing git..."
    sudo pacman -S github-cli --noconfirm --needed
fi
```

- **Purpose**: Checks if GitHub CLI is already installed on the system and installs it if not.
- **How it works**: Similar to the Git check, it uses `pacman -Qi github-cli` to query the package database for GitHub CLI. If found, it skips the installation; otherwise, it proceeds with the installation using `sudo pacman -S github-cli --noconfirm --needed`.

#### 4. Configuring Git (Lines 66-80)

```bash
read -p "Enter your Git username: " var_name
read -p "Enter your Git email: " var_email

git config --global user.name "$var_name"
git config --global user.email "$var_email"

echo "Git has been configured with the following details:"
git config --global user.name
git config --global user.email
```

- **Purpose**: Prompts the user to enter their Git username and email, then configures Git globally with these credentials.
- **How it works**: Uses `read` to capture user input for the Git username and email. Then, `git config --global` is used to set these values globally. Finally, it confirms the configuration by echoing the configured details.

#### 5. GitHub CLI Login (Lines 81-99)

```bash
gh auth login
gh auth setup-git
```

- **Purpose**: Guides the user through logging into GitHub CLI and setting up Git authentication.
- **How it works**: Executes `gh auth login` to initiate the login process for GitHub CLI. After successful login, `gh auth setup-git` is called to configure Git to use the authenticated GitHub account for operations.

##### This is an AI generated document
