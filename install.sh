#!/bin/bash
echo "[INFO] Installing NeXusbFix..."
sudo cp scripts/nexusbfix.sh /usr/local/bin/nexusbfix
sudo chmod +x /usr/local/bin/nexusbfix
echo "[INFO] Installation complete! Run 'nexusbfix' to start."
