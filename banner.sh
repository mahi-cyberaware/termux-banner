#!/data/data/com.termux/files/usr/bin/bash

clear

# Get screen width safely
WIDTH=${COLUMNS:-80}

center() {
  local text="$1"
  printf "%*s\n" $(((${#text} + WIDTH) / 2)) "$text"
}

echo ""
echo -e "\e[36m"
center "Welcome to"
echo -e "\e[0m"

echo -e "\e[1;33m"
center "CYBERAWARE"
echo -e "\e[0m"

echo ""
echo -e "\e[1;32m"
center "Coded By Mahi"
echo -e "\e[0m"

echo ""

# username@device + date time
USER_INFO="$(whoami)@android"
DATE_INFO="$(date '+%d %b %Y | %I:%M %p')"

echo -e "\e[36m"
center "$USER_INFO"
center "$DATE_INFO"
echo -e "\e[0m"

echo ""
echo -e "\e[36m[+] Cyber Awareness • Ethical Learning\e[0m"
echo -e "\e[36m[+] Stay Aware | Stay Secure\e[0m"
echo "--------------------------------------------"
