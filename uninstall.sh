#!/usr/bin/env bash
echo "PVEThemes Uninstaller"
echo "---------------------"
echo "This will remove all custom themes and restore the original Proxmox web interface."
echo ""
read -p "Are you sure you want to uninstall PVEThemes? (y/n): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "Uninstall cancelled."
    exit 0
fi
echo ""
echo "Restoring original Proxmox files..."
echo "----------APT OUTPUT----------"
apt -qq -o=Dpkg::Use-Pty=0 reinstall proxmox-widget-toolkit pve-manager
echo "------------------------------"
THEME_DIR="/usr/share/javascript/proxmox-widget-toolkit/themes"
if [ -d "$THEME_DIR" ]; then
    for theme_file in themes/theme-*.css; do
        filename=$(basename "$theme_file")
        if [ -f "$THEME_DIR/$filename" ]; then
            rm -f "$THEME_DIR/$filename"
            echo "Removed $filename from $THEME_DIR"
        fi
    done
fi
echo ""
echo "Uninstall complete. Please clear your browser cache and refresh the Proxmox web interface."
