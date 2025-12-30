#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing Cyberaware Termux Banner..."

cp banner.sh $HOME/banner.sh
chmod +x $HOME/banner.sh

# Ensure banner runs on startup (zsh)
grep -q banner.sh ~/.zshrc || echo '[ -f "$HOME/banner.sh" ] && bash "$HOME/banner.sh"' >> ~/.zshrc

# Disable default Termux welcome message
touch ~/.hushlogin

echo "[✓] Installation complete."
echo "[✓] Restart Termux to see the banner."
