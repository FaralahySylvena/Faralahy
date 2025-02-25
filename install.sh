#!/data/data/com.termux/files/usr/bin/bash

# Couleurs
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RESET='\033[0m'

clear
echo -e "${BLUE}┌─────────────────────────────┐${RESET}"
echo -e "${BLUE}│      ${YELLOW}_____  _  _______      ${BLUE}│${RESET}"
echo -e "${BLUE}│     |  __ \| |/ / ____|     ${BLUE}│${RESET}"
echo -e "${BLUE}│     | |__) | ' / |  __      ${BLUE}│${RESET}"
echo -e "${BLUE}│     |  ___/|  <| | |_ |     ${BLUE}│${RESET}"
echo -e "${BLUE}│     | |    | . \ |__| |     ${BLUE}│${RESET}"
echo -e "${BLUE}│     |_|    |_|\_\_____|     ${BLUE}│${RESET}"
echo -e "${BLUE}│                             │${RESET}"
echo -e "${BLUE}│  ${RED}FARALAHY SYLVENA${BLUE}           │${RESET}"
echo -e "${BLUE}└─────────────────────────────┘${RESET}"
echo -e "${CYAN}═════════════════════════════════════${RESET}"
echo -e "${GREEN} (√) Github     =    Faralahy05${RESET}"
echo -e "${GREEN} (√) Tool Name  =    INSTALLATION${RESET}"
echo -e "${CYAN}═════════════════════════════════════${RESET}"
echo -e "${WHITE}[1] ALL INSTALL PKG${RESET}"
echo -e "${WHITE}[0] EXIT${RESET}"
echo -e "${CYAN}═════════════════════════════════════${RESET}"
echo -ne "${YELLOW}[?] Choice: ${RESET}"
read choice

if [ "$choice" == "1" ]; then
    echo -e "${GREEN}Mise à jour des paquets...${RESET}"
    pkg update -y
    pkg upgrade -y

    packages=(
        "python" "python2" "pip" "pip2" "lolcat" "fish" "ruby" "git" "php"
        "perl" "nmap" "bash" "clang" "nano" "w3m" "hydra" "figlet" "cowsay"
        "curl" "tar" "zip" "unzip" "tor" "wget" "wcalc" "bmon" "golang"
        "openssl" "cmatrix" "openssh" "wireshark" "toilet" "sl" "wim" "tch"
        "zsh" "fortune"
    )

    for pkg in "${packages[@]}"; do
        echo -e "${CYAN}Installation de $pkg...${RESET}"
        pkg install "$pkg" -y
    done

    echo -e "${GREEN}Mise à jour finale...${RESET}"
    apt update -y
    apt upgrade -y

    echo -e "${GREEN}Installation terminée !${RESET}"

elif [ "$choice" == "0" ]; then
    echo -e "${RED}Fermeture du script...${RESET}"
    exit 0

else
    echo -e "${RED}Option invalide !${RESET}"
    exit 1
fi
