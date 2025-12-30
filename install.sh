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




















# -------------------------------
# Banner ON / OFF command
# -------------------------------
cat << 'EOF' > $PREFIX/bin/banner
#!/data/data/com.termux/files/usr/bin/bash

case "\$1" in
  on)
    sed -i '/banner.sh/d' ~/.zshrc
    echo 'if [ -f "$HOME/banner.sh" ]; then bash "$HOME/banner.sh"; fi' >> ~/.zshrc
    echo "Banner enabled"
    ;;
  off)
    sed -i '/banner.sh/d' ~/.zshrc
    echo "Banner disabled"
    ;;
  *)
    echo "Usage: banner on | banner off"
    ;;
esac
EOF

chmod +x $PREFIX/bin/banner
