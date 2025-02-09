# NeXusbFix

**NeXusbFix** is a command-line utility designed to diagnose and resolve USB device issues on Linux.

## Features
- Automated USB device checks and fixes
- System update check with optional upgrade
- Network interface reactivation for inactive connections
- Safe, non-destructive detection of USB storage devices
- User-friendly CLI options: `--dry-run`, `--verbose`, `--yes`

## Installation
To install manually:
```bash
sudo dpkg -i nexusbfix_1.14-1_all.deb
```
Once published in an APT repo, you can install via:
```bash
sudo apt install nexusbfix
```

## Usage
```bash
nexusbfix --dry-run   # Perform a test run
nexusbfix -v          # Verbose mode
nexusbfix -y          # Auto-confirm actions
```

## License
MIT License
