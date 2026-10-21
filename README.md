
<div align="center">

# ⚡ ANAND.OS // TERMUX DOTFILES ⚡
### *Automated CLI Environment • Kali Root Shell • Dynamic Dependency Runner*

[![Termux](https://img.shields.io/badge/Platform-Termux-black?style=for-the-badge&logo=gnu-bash&logoColor=green)](https://termux.dev)
[![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![NodeJS](https://img.shields.io/badge/Node.js-LTS-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://nodejs.org)
[![Shell](https://img.shields.io/badge/Bash-Shell-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)](#)
[![Status](https://img.shields.io/badge/Status-Operational-brightgreen?style=for-the-badge)](#)

---

```text
    ___    _   __ ___     _   __ ____ 
   /   |  / | / //   |   / | / // __ \
  / /| | /  |/ // /| |  /  |/ // / / /
 / ___ |/ /|  // ___ | / /|  // /_/ / 
/_/  |_/_/ |_//_/  |_|/_/ |_//_____/  
   >> APEX CORE ENVIRONMENT ACTIVE <<

> A single-command, zero-friction dotfile system turning stock Termux into a fully-automated, dark-themed hacker workstation with dynamic package resolution.
> 
</div>
🚀 1-Command Deployment
Termux install karte hi yeh single command run karein:
pkg install -y git && git clone [https://github.com/desianandyt/termux-dotfiles.git](https://github.com/desianandyt/termux-dotfiles.git) ~/termux-dotfiles && bash ~/termux-dotfiles/setup.sh

> Automated Workflow: Setup packages install karega, files link karega, aur session ko auto-reload karke fresh Kali shell me land kar dega.
> 
⚡ Core Architecture
1. 🛡️ Kali Linux Style Root Prompt
Standard $  prompt ko 2-line Kali root look me customize kiya gaya hai:
┌──(root㉿anand)-[~]
└─# 

2. 🔮 Smart Multi-Language Runner (run)
Global binary command (run) jo code run karne se pehle dependencies inspect aur auto-resolve karti hai:
 * Dual Engine Support:
   * Python (.py): requirements.txt ya file ke imports (import, from) scan karta hai. Package alias mappings (cv2 -> opencv-python, PIL -> Pillow, bs4 -> beautifulsoup4) natively handled hain.
   * Node.js (.js, .mjs, .cjs): package.json ya file ke andar require('...') aur from '...' dono scan karta hai. Core Node modules (fs, path, http) ko ignore karke missing external packages install karta hai.
 * Non-Blocking Braille Animation: Package installation ke dauran terminal par clean spinner chalta hai (⠋ ⠙ ⠹ ⠸ ⠼ ⠴ ⠦ ⠧ ⠇ ⠏).
 * Isolated Log Engine: Har execution ka detailed stdout/stderr log ~/.run_logs/<filename>/run_<timestamp>.log me save hota hai.
🛠️ Usage
# Python script run karein (missing packages auto-install honge)
run script.py

# Node.js script run karein (with or without package.json)
run index.js

# Custom arguments ke saath
run bot.py --dev --port 5000

📂 Repository Layout
termux-dotfiles/
├── bashrc        # Kali prompt (PS1), dynamic banner & aliases
├── run           # Global dynamic dependency runner engine
├── setup.sh      # Automated environment installer & reloader
└── README.md     # Project documentation

⚙️ Automated Setup Specs
setup.sh execute hone par:
 * Core system packages install karta hai (python, nodejs-lts, git, figlet, toilet, ncurses-utils).
 * Gradient banners ke liye Python lolcat set karta hai.
 * Default Termux welcome screen (MOTD) remove karta hai.
 * run engine ko $PREFIX/bin/ me deploy karke executable banata hai.
 * bashrc link karta hai aur instantly fresh login shell trigger karta hai.
<div align="center">
Crafted with precision by Anand Sharma
Code. Break. Build. Repeat.
</div>
