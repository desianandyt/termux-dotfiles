#!/data/data/com.termux/files/usr/bin/bash

echo -e "\e[1;34m[*] Restoring Anand's Custom Termux Environment...\e[0m"

# Core packages install
pkg update -y && pkg upgrade -y
pkg install -y git python nodejs-lts figlet toilet ncurses-utils

# Install lolcat via pip (fixes 'No command lolcat found')
pip install lolcat

# Restore Runner Binary
mkdir -p $PREFIX/bin
cp run $PREFIX/bin/run
chmod +x $PREFIX/bin/run

# Restore Bashrc (Prompt + Banner)
cp bashrc ~/.bashrc

# Remove default annoying MOTD
rm -f $PREFIX/etc/motd

echo -e "\n\e[1;32m[✔] Setup restored successfully!\e[0m"
echo -e "\e[1;36m[!] Restart Termux or run: source ~/.bashrc\e[0m\n"
