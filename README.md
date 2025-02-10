# NeXusbFix

## Overview
NeXusbFix is a **lightweight command-line utility** designed to **diagnose, fix, and manage USB devices** on Debian-based systems.

🔹 **Key Features:**
- Detects and lists all connected USB devices  
- Provides **automated fixes** for common USB connection issues  
- Restarts systemd services related to USB handling  
- Checks and optionally **repairs network interfaces**  
- Includes a **dry-run mode** for previewing actions  
- Safe, **non-destructive operations**  
- **Prompts for system updates** if necessary  
- **Reboot prompt** if critical changes were made  

🚀 **Why Use NeXusbFix?**  
If you've ever had **USB devices randomly disconnect, stop responding, or fail to mount**, this tool provides **quick, automated fixes** without requiring a full system restart.

---

## 📦 Installation
NeXusbFix is installed manually using the `.deb` package.

### **Install NeXusbFix**
1️⃣ **Download the latest release:**
```bash
wget https://github.com/Arelius-D/NeXusbFix/releases/latest/download/nexusbfix_1.15_all.deb

2️⃣ Install the package:
sudo dpkg -i nexusbfix_1.15_all.deb

3️⃣ Fix missing dependencies (if needed):
sudo apt-get install -f

✅ **Done!** NeXusbFix is now installed and ready to use.

---

## 🔧 Usage
Once installed, you can run NeXusbFix using:

### **Basic Scan & Fix**
```bash
sudo nexusbfix
```
This will **detect and attempt to fix any USB issues automatically.**  
It will also **check network interfaces** and **prompt for system updates** if necessary.

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

### **Auto-Confirm All Fixes**
```bash
sudo nexusbfix --yes
```
🔹 **What this does:**  
- Automatically answers "yes" to any prompts (e.g., system updates, interface repairs, reboot).  
- Useful for automation or scripting.  

---

## ⚙️ What NeXusbFix Actually Does

### **Step 1: System Update Check**
- **Reads** `/var/log/dpkg.log` to check when the last system update happened.  
- If the update is **older than 24 hours**, it **prompts** the user to update.  
- If `--yes` is used, it **automatically updates** without prompting.  
- If `--dry-run` is used, it **simulates the update** but doesn’t execute it.  

### **Step 2: Reload systemd**
- Runs `systemctl daemon-reexec` to **refresh systemd** in case of USB-related service issues.  
- If `--dry-run` is used, it **prints the command** but does not execute it.  

### **Step 3: Scan USB Devices**
- Uses `lsusb` to list all detected USB devices.  
- If `--verbose` is enabled, it prints detailed USB device info.  

### **Step 4: Check & Fix Network Interfaces**
- **Scans Ethernet interfaces** (`ip link show | grep "state DOWN"`).  
- If an interface is **down**, it **brings it up**.  
- If `--dry-run` is enabled, it **does not execute**, only prints the fix.  
- If `--yes` is used, it **automatically applies** all fixes without asking.  

### **Step 5: Detect USB Storage Devices**
- Uses `lsblk -S | grep usb` to list USB storage devices.  
- **Excludes optical drives (`srX`)** from detection.  
- Prints **detected USB storage devices**.  

### **Step 6: Reboot Prompt (If Required)**
- If **system updates were applied** or **network interfaces were fixed**,  
  - It **prompts** the user to reboot.  
  - If `--yes` is used, it **automatically reboots**.  
  - If `--dry-run` is used, it **only prints what would happen**.  

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
