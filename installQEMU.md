```
░░▀░░█▀▀▄░█▀▀░▀█▀░█▀▀▄░█░░█░░▒█▀▀█░▒█▀▀▀░▒█▀▄▀█░▒█░▒█░░░░█▀▀░█░░░
░░█▀░█░▒█░▀▀▄░░█░░█▄▄█░█░░█░░▒█░▒█░▒█▀▀▀░▒█▒█▒█░▒█░▒█░▄▄░▀▀▄░█▀▀█
░▀▀▀░▀░░▀░▀▀▀░░▀░░▀░░▀░▀▀░▀▀░░▀▀█▄░▒█▄▄▄░▒█░░▒█░░▀▄▄▀░▀▀░▀▀▀░▀░░▀

```
### Script Overview

This script automates the installation and configuration of QEMU, a generic and open-source machine emulator and virtualizer, along with related tools and services on Arch Linux systems. It ensures that all necessary packages are installed, services are started, and configurations are applied correctly.

### Sections Explained

#### 1. ASCII Art Banner (Lines 3-12)

```bash
tput setaf 5
cat <<"EOF"
...
EOF
```

- **Purpose**: Displays an ASCII art banner when the script starts, making the script visually appealing and indicating the beginning of the process.
- **How it works**: Uses ANSI escape codes (`tput setaf 5`) to change the text color to green and then prints the ASCII art using a heredoc (`<<"EOF"`).

#### 2. Package Installation (Lines 13-23)

```bash
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
```

- **Purpose**: Installs various packages required for QEMU and virtualization management.
- **Key Packages**:
  - `dmidecode`: Provides hardware system information.
  - `iptables-nft`: Allows for advanced packet filtering.
  - `ebtables`: A framework to filter network packets.
  - `qemu-full`: The full suite of QEMU binaries.
  - `virt-manager`: Virtual Machine Manager GUI.
  - `virt-viewer`: Tool to display virtualized guest operating systems.
  - `dnsmasq`: Lightweight DHCP and DNS server.
  - `vde2`: Virtual Distributed Ethernet.
  - `bridge-utils`: Utilities for configuring Linux Ethernet bridges.
  - `edk2-ovmf`: UEFI firmware for OVMF (Open Virtual Machine Firmware).
- **Flags**:
  - `--noconfirm`: Skips confirmation prompts.
  - `--needed`: Avoid reinstalling packages already present.

#### 3. Starting Services (Lines 24-28)

```bash
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
```

- **Purpose**: Ensures that the libvirtd service, which manages the KVM hypervisor, is enabled to start automatically at boot and starts the service immediately.
- **How it works**: Uses `systemctl` commands to manage the service state.

#### 4. Kernel Configuration for Nested Virtualization (Line 29)

```bash
echo -e "options kvm-intel nested=1" | sudo tee -a /etc/modprobe.d/kvm-intel.conf
```

- **Purpose**: Enables nested virtualization support in the kernel module for Intel processors.
- **How it works**: Appends options to the `/etc/modprobe.d/kvm-intel.conf` file to enable nested virtualization.

#### 5. User Group Membership (Lines 31-34)

```bash
user=$(whoami)
sudo gpasswd -a $user libvirt
sudo gpasswd -a $user kvm
```

- **Purpose**: Adds the current user to the `libvirt` and `kvm` groups to grant permissions for managing virtual machines.
- **How it works**: Retrieves the current username and adds it to both groups using `gpasswd`.

#### 6. Network Configuration (Lines 35-38)

```bash
sudo virsh net-define /etc/libvirt/qemu/networks/default.xml
sudo virsh net-autostart default
```

- **Purpose**: Configures the default network for virtual machines managed by libvirt.
- **How it works**: Defines the network configuration based on a predefined XML file and sets it to autostart.

#### 7. Restarting libvirtd Service (Line 39)

```bash
sudo systemctl restart libvirtd.service
```

- **Purpose**: Applies any changes made during the script execution by restarting the libvirtd service.
- **How it works**: Restarts the service using `systemctl`.

#### 8. Final ASCII Art (Lines 41-46)

```bash
cat <<"EOF"
...
EOF
```

- **Purpose**: Displays another ASCII art piece as a visual cue that the script has completed successfully.
- **How it works**: Similar to the initial ASCII art, uses a heredoc to print the ASCII art.

#### this README.md file is AI GENERATED
