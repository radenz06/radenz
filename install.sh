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
pkg install python-pip -y
pkg install -y git 
pkg install ncurses-utils -y 
pip install lolcat
pkg install mpv -y
pkg install neofetch -y
pkg install curl -y

# ========== 🎨 SETUP BACKGROUND (TAMBAHAN) ==========
echo -e "${YELLOW}[1b/5]🎨 MAU SET BACKGROUND MEMEK?${NC}"
echo ""
echo "Pilih jenis background Termux:"
echo "1) Transparan 80% (kayak kaca)"
echo "2) Solid (default, gak transparan)"
echo "3) Warna hitam pekat + cursor ijo"
echo "4) Gak usah, lanjut aja"
echo ""
read -p "Pilih (1-4): " bg_choice

case $bg_choice in
    1)
        mkdir -p ~/.termux
        echo "background_opacity = 0.8" > ~/.termux/termux.properties
        echo -e "${GREEN}   ✅ Background transparan 80% terpasang${NC}"
        ;;
    2)
        mkdir -p ~/.termux
        echo "background_opacity = 1.0" > ~/.termux/termux.properties
        echo -e "${GREEN}   ✅ Background solid terpasang${NC}"
        ;;
    3)
        mkdir -p ~/.termux
        cat > ~/.termux/colors.properties << 'EOF'
background=#000000
foreground=#FFFFFF
cursor=#00FF00
EOF
        echo "background_opacity = 1.0" > ~/.termux/termux.properties
        echo -e "${GREEN}   ✅ Background hitam pekat + cursor ijo${NC}"
        ;;
    4)
        echo -e "${BLUE}   ⏭️  Lewati setup background${NC}"
        ;;
    *)
        echo -e "${RED}   ❌ Pilihan gak valid, lanjut aja${NC}"
        ;;
esac

# Apply settings kalo ada perubahan
if [ -f ~/.termux/termux.properties ] || [ -f ~/.termux/colors.properties ]; then
    termux-reload-settings 2>/dev/null
    echo -e "${GREEN}   ✅ Background settings applied${NC}"
fi
echo ""

# Copy typing effect
echo -e "${YELLOW}[2/5]📁 SEDANG MENGINSTALL MEMEK BERJALAN...${NC}"
cp typing.sh ~/.typing.sh
chmod +x ~/.typing.sh

# Backup .bashrc
echo -e "${YELLOW}[3/5]💾 Backing up .bashrc...${NC}"
[ -f ~/.bashrc ] && cp ~/.bashrc ~/.bashrc.backup.$(date +%Y%m%d_%H%M%S)

# Install bashrc
echo -e "${YELLOW}[4/5]🎨 KONFIGURASI MEMEK...${NC}"
cat bashrc >> ~/.bashrc

# Setup storage
echo -e "${YELLOW}[5/5]📱 NAH SEKARANG LAGI SETUP MEMEK...${NC}"
termux-setup-storage <<< "y" 2>/dev/null

echo ""
echo -e "${GREEN}═══════════════════════════════════════════════${NC}"
echo -e "${GREEN}✅ INSTALL MEMEK SUCCESS!${NC}"
echo -e "${BLUE}🚀 ketik 'login' untuk melanjutkan${NC}"
echo -e "${BLUE}👑 Author: RADEN😈${NC}"
echo -e "${BLUE}💀 Status: SINGLE ERA 🗿🖕${NC}"
echo -e "${GREEN}═══════════════════════════════════════════════${NC}"
