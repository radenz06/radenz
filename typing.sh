#!/bin/bash
# ========== 🔥 TYPING EFFECT - RADENZ ==========
# Author: RADEN😈 (radenz06)

typing() {
    local text="$1"
    local delay="${2:-0.0001}"

    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep $delay
    done
    echo
}
export -f typing
