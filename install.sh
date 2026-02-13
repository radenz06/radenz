#!/bin/bash
# ========== 🔥 RADENZ INSTALLER 🔥 ==========
# Author: RADEN😈 (radenz06)

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

clear
echo -e "${GREEN}"
echo "░▒▓█ 🔥 BENTAR YA LAGI NGEDONLOT BAHAN COLI 🔥 █▓▒░"
echo -e "${NC}"
echo ""

# Install packages
echo -e "${YELLOW}[1/5]📦 SEDANG MENGINSTALL MEMEK...${NC}"
pkg update -y && pkg upgrade -y
pkg install -y git lolcat ncurses-utils mpv neofetch curl

# Copy typing effect
echo -e "${YELLOW}[2/5]📁 SEDANG MENGINSTALL MEMEK BERJALAN...${NC}"
cp typing-effect.sh ~/.typing-effect.sh
chmod +x ~/.typing-effect.sh

# Backup .bashrc
echo -e "${YELLOW}[3/5]💾 Backing up .bashrc...${NC}"
[ -f ~/.bashrc ] && cp ~/.bashrc ~/.bashrc.backup.$(date +%Y%m%d_%H%M%S)

# Install bashrc
echo -e "${YELLOW}[4/5]🎨 KONFIGURASI MEMEK...${NC}"
cat bashrc >> ~/.bashrc

# Setup storage
echo -e "${YELLOW}[5/5]📱 NAH SEKARANG LAGI SETUP MEMEK...${NC}"
termux-setup-storage

echo ""
echo -e "${GREEN}═══════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ INSTALL MEMEK SUCCESS!${NC}"
echo -e "${BLUE}🚀 Jalankan: source ~/.bashrc${NC}"
echo -e "${BLUE}👑 Author: RADEN😈${NC}"
echo -e "${BLUE}💀 Status: SINGLE ERA 🗿🖕${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════${NC}"

