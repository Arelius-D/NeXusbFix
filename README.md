# NeXusbFix

## Overview
NeXusbFix is a **lightweight command-line utility** designed to **diagnose, fix, and manage USB devices** on Debian-based systems.

🔹 **Key Features:**
- Detects and lists all connected USB devices
- Provides **automated fixes** for common USB connection issues
- Restarts systemd services related to USB handling
- Includes a **dry-run mode** for previewing actions
- Safe, **non-destructive operations**

🚀 **Why Use NeXusbFix?**
If you've ever had **USB devices randomly disconnect, stop responding, or fail to mount**, this tool provides **quick, automated fixes** without requiring a full system restart.

---

## 📦 Installation (APT Repository)
NeXusbFix is available via a **GitHub-hosted APT repository**, allowing easy installation with `apt install`.

### **Step 1: Add the APT Repository**
```bash
wget -O- https://raw.githubusercontent.com/Arelius-D/NeXusbFix/main/repo/public.key | sudo apt-key add -
echo "deb https://raw.githubusercontent.com/Arelius-D/NeXusbFix/main/repo ./" | sudo tee /etc/apt/sources.list.d/nexusbfix.list
sudo apt update
```

### **Step 2: Install NeXusbFix**
```bash
sudo apt install nexusbfix
```

✅ **Done!** NeXusbFix is now installed and ready to use.

---

## 🔧 Usage
Once installed, you can run NeXusbFix using:

### **Basic Scan & Fix**
```bash
sudo nexusbfix
```
This will **detect and attempt to fix any USB issues automatically.**

### **Dry-Run Mode (Preview Fixes)**
```bash
sudo nexusbfix --dry-run
```
🔹 **What this does:**
- **Shows** what actions would be taken, without applying changes.
- Ideal for reviewing system issues **before making modifications.**

### **Verbose Mode (Detailed Logging)**
```bash
sudo nexusbfix --verbose
```
🔹 **What this does:**
- Provides detailed output of each step NeXusbFix takes.
- Useful for debugging USB-related issues.

### **Force Restart USB Services**
```bash
sudo nexusbfix --restart-usb
```
🔹 **What this does:**
- **Restarts systemd services** that manage USB devices.
- Useful for recovering unresponsive USB devices **without rebooting.**

---

## ⚙️ Advanced Options
| Command | Description |
|---------|-------------|
| `--dry-run` | Simulates a scan and shows what would be fixed |
| `--verbose` | Provides more detailed logs |
| `--restart-usb` | Restarts USB-related services |
| `--yes` | Auto-confirms all fixes without prompting |

---

## 🔍 Checking Installed Version
```bash
nexusbfix --version
```

---

## 🚀 Uninstalling NeXusbFix
If you ever need to remove NeXusbFix, run:
```bash
sudo apt remove --purge nexusbfix
sudo apt autoremove
```

To **remove the APT repository**, delete the source list:
```bash
sudo rm /etc/apt/sources.list.d/nexusbfix.list
sudo apt update
```

---

## 🛠 Troubleshooting
**1️⃣ NeXusbFix is not found?**  
Make sure it's installed:
```bash
dpkg -l | grep nexusbfix
```
If it's missing, **reinstall it**:
```bash
sudo apt update && sudo apt install nexusbfix
```

**2️⃣ USB device still not working?**  
Try forcing a USB restart:
```bash
sudo nexusbfix --restart-usb
```

---

## 💬 Contributing & Support
🔹 **Report Issues**: Open an issue on [GitHub](https://github.com/Arelius-D/NeXusbFix/issues)

🔹 **Feature Requests**: If you have ideas, feel free to contribute!

🔹 **Maintainer**: [Arelius-D](https://github.com/Arelius-D)

---

## 📜 License
NeXusbFix is released under the **MIT License**. See the [LICENSE](https://github.com/Arelius-D/NeXusbFix/blob/main/LICENSE) file for more details.

---

### 🎉 **Now, Anyone Can Install NeXusbFix with One Command!** 🎉
```bash
sudo apt install nexusbfix
```
🔥 **Enjoy fast, reliable USB fixes on Debian-based systems!** 🚀

