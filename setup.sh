#!/data/data/com.termux/files/usr/bin/bash

# Find the exact directory where setup.sh lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "\e[1;34m[*] Restoring Anand's Custom Termux Environment...\e[0m"

# Core packages install
pkg update -y && pkg upgrade -y
pkg install -y git python nodejs-lts figlet toilet ncurses-utils

# Install lolcat via pip
pip install lolcat

# Restore Runner Binary
mkdir -p "$PREFIX/bin"
if [ -f "$SCRIPT_DIR/run" ]; then
    cp "$SCRIPT_DIR/run" "$PREFIX/bin/run"
    chmod +x "$PREFIX/bin/run"
fi

# Restore Bashrc (Prompt + Banner)
if [ -f "$SCRIPT_DIR/bashrc" ]; then
    cp "$SCRIPT_DIR/bashrc" "$HOME/.bashrc"
fi

# Remove default annoying MOTD
rm -f "$PREFIX/etc/motd"

echo -e "\n\e[1;32m[✔] Setup restored successfully!\e[0m"
echo -e "\e[1;36m[!] Restart Termux or run: source ~/.bashrc\e[0m\n"
