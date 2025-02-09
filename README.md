# NeXusbFix - USB Check & Fix Tool

NeXusbFix is a simple yet powerful tool for managing and fixing USB-related issues on Debian-based systems.

## 🚀 Features
- ✅ **Scans and lists USB devices**
- ✅ **Checks network interfaces and brings them up if necessary**
- ✅ **Detects missing USB drivers and attempts fixes**
- ✅ **Checks for required USB-related packages and offers to install them**
- ✅ **Ensures the system is up to date (but skips if recently updated)**
- ✅ **Offers a `--dry-run` mode to preview changes before applying**
- ✅ **Prevents unnecessary reboots**

## 📌 Installation
Clone the repository and run:
```bash
git clone https://github.com/yourusername/NeXusbFix.git
cd NeXusbFix
chmod +x install.sh
./install.sh
```

## 🔹 Usage
Run the script manually:
```bash
sudo ./scripts/nexusbfix.sh
```

### ⚙️ Available Options:
- `--dry-run` → Runs in preview mode without making changes
- `-v, --verbose` → Shows detailed output
- `-y, --yes` → Automatically confirms actions without prompts

## 📝 License
This project is open-source under the **MIT License**.
