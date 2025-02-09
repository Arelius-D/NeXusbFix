#!/bin/bash
# NeXusbFix v1.14
# Removes all extra line breaks and ensures clean interface output.

# Default flags
DRY_RUN=false
VERBOSE=false
AUTO_YES=false
REBOOT_NEEDED=false
UPDATES_APPLIED=false
INTERFACE_FIXED=false

# Function to display help
show_help() {
  echo "Usage: $0 [--dry-run] [-v|--verbose] [-y|--yes]"
  echo "Options:"
  echo "  --dry-run   : Perform a dry run without making any changes."
  echo "  -v, --verbose  : Show detailed output."
  echo "  -y, --yes      : Automatic yes to prompts, performs actions without asking."
}

# Parse command-line arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --dry-run) DRY_RUN=true ;;
    -v|--verbose) VERBOSE=true ;;
    -y|--yes) AUTO_YES=true ;;
    -h|--help) show_help; exit 0 ;;
    *) echo "Unknown parameter: $1"; show_help; exit 1 ;;
  esac
  shift
done

# Step 1: Clear Terminal
clear
echo "[INFO] Running NeXusbFix..."
echo "----------------------------------------"

# Step 2: Check if system was updated recently
echo "[INFO] Checking last system update timestamp..."
LAST_UPGRADE=$(grep " upgrade " /var/log/dpkg.log | tail -1 | awk '{print $1, $2}')
if [ -n "$LAST_UPGRADE" ]; then
  LAST_UPGRADE_SEC=$(date -d "$LAST_UPGRADE" +%s)
  CURRENT_TIME_SEC=$(date +%s)
  TIME_DIFF=$((CURRENT_TIME_SEC - LAST_UPGRADE_SEC))

  if [ "$TIME_DIFF" -lt 86400 ]; then  # Less than 24 hours old
    echo "[INFO] System was updated recently. Skipping update check."
  else
    echo "[INFO] System update is older than 24 hours. Checking for updates..."
    if [ "$DRY_RUN" = false ]; then
      if [ "$AUTO_YES" = true ]; then
        sudo apt update && sudo apt upgrade -y && UPDATES_APPLIED=true
      else
        read -p "Do you want to update the system before proceeding? (y/N) " update_choice
        if [[ "$update_choice" =~ ^[Yy]$ ]]; then
          sudo apt update && sudo apt upgrade -y && UPDATES_APPLIED=true
        else
          echo "[SKIPPED] System update skipped."
        fi
      fi
    else
      echo "[DRY-RUN] Would execute: apt update && apt upgrade -y"
    fi
  fi
else
  echo "[WARNING] No upgrade history found. Proceeding with normal update prompt."
fi

echo "----------------------------------------"
echo "[INFO] NeXusbFix Check Completed."
