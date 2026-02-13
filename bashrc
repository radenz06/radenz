# ========== 🔥 RADENZ TERMINAL ==========
# Author: RADEN😈 (radenz06)

# ========== 🎯 LOAD TYPING EFFECT ==========
if [ -f ~/.typing-effect.sh ]; then
    source ~/.typing-effect.sh
fi

# ========== 🎯 FUNGSI CENTER ==========
center() {
    local text="$1"
    local width=$(tput cols)
    local padding=$(( (width - ${#text}) / 2 ))
    [[ $padding -lt 0 ]] && padding=0
    printf "%*s%s\n" $padding "" "$text"
}
export -f center

# ========== 🎨 LOLCAT FALLBACK ==========
lolcat() { 
    if command -v lolcat &> /dev/null; then
        command lolcat "$@" 
    else
        cat
    fi
}

# ========== 🔥 SOUND AUTO PLAY ==========
SOUND_FILE="/sdcard/Download/mvp.mp3"
if [ -f "$SOUND_FILE" ] && command -v mpv &> /dev/null; then
    (sleep 0.2 && mpv --volume=70 --really-quiet "$SOUND_FILE") & disown
fi

# ========== 🎭 BANNER ==========
clear
typing "$(center "██████╗  █████╗ ██████╗ ███████╗███╗   ██╗")" 0.0001 | lolcat
typing "$(center "██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗  ██║")" 0.0001 | lolcat
typing "$(center "██████╔╝███████║██║  ██║█████╗  ██╔██╗ ██║")" 0.0001 | lolcat
typing "$(center "██╔══██╗██╔══██║██║  ██║██╔══╝  ██║╚██╗██║")" 0.0001 | lolcat
typing "$(center "██║  ██║██║  ██║██████╔╝███████╗██║ ╚████║")" 0.0001 | lolcat
typing "$(center "╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝")" 0.0001 | lolcat
typing "$(center "")" 0.0001 | lolcat

# ========== 📊 NEOFETCH ==========
if command -v neofetch &> /dev/null; then
    typing "$(center "╔══════════════════════════════════════════════════╗")" 0.0001 | lolcat
    neofetch --stdout --disable cpu --disable gpu 2>/dev/null | sed 's/^/║ /' | while read line; do
        echo "$(center "$line")" | lolcat
    done
    typing "$(center "╚══════════════════════════════════════════════════╝")" 0.0001 | lolcat
fi
typing "$(center "")" 0.0001 | lolcat

# ========== 👑 AUTHOR ==========
typing "$(center "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")" 0.0001 | lolcat
typing "$(center "   ░▒▓█     👑 Author: RADEN😈    █▓▒░")" 0.0001
typing "$(center "  ░▒▓█ 🗿 STATUS: SINGLE ERA🗿🖕 █▓▒░")" 0.0001
typing "$(center "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓")" 0.0001 | lolcat
typing "$(center "")" 0.0001 | lolcat

# ========== 💬 PESAN ==========
typing "$(center "╔══════════════════════════════════════════════════════╗")" 0.0001 | lolcat
typing "$(center "║   ░▒▓█ 𝑴𝑨𝑺𝑼𝑲𝑰𝑵 𝑪𝑶𝑴𝑴𝑨𝑵𝑫 𝒀𝑨𝑵𝑮 𝑩𝑬𝑵𝑬𝑹 𝒀𝑨 𝑨𝑵𝑱𝑰𝑵𝑮! █▓▒░    ║")" 0.0001 | lolcat
typing "$(center "╚══════════════════════════════════════════════════════╝")" 0.0001 | lolcat
typing "$(center "")" 0.0001 | lolcat

# ========== 🖱️ CURSOR ==========
printf "\033[?25h"
tput cnorm 2>/dev/null
stty echo

# ========== 🧬 PROMPT ==========
export PS1='┌─[\[\e[32m\]RADEN-GPT\[\e[0m\]]─[\[\e[34m\]\w\[\e[0m\]]\n└──╼ \[\e[32m\]ᛤ\[\e[0m\] '

# ========== ⌨️ AUTOCOMPLETE ==========
bind "set completion-ignore-case on" 2>/dev/null
bind '"\e[A": history-search-backward' 2>/dev/null
bind '"\e[B": history-search-forward' 2>/dev/null
