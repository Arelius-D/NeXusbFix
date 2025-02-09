#!/bin/bash
echo "[INFO] Building Debian package for NeXusbFix..."
mkdir -p debian/usr/local/bin
cp scripts/nexusbfix.sh debian/usr/local/bin/nexusbfix
dpkg-deb --build debian nexusbfix.deb
echo "[INFO] Debian package built: nexusbfix.deb"
