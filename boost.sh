#!/bin/bash
#Rouge

# Boost Zorin OS Lite - Maintenance Script

echo "⚙️  Starting system cleanup and performance boost..."

# Ask for sudo password at start
sudo -v

# 1. Clean apt cache
echo "🧹 Cleaning APT cache..."
sudo apt clean
sudo apt autoclean
sudo apt autoremove -y

# 2. Remove orphaned packages
echo "🗑️  Removing orphaned packages..."
sudo deborphan | xargs sudo apt -y remove --purge

# 3. Clear user cache
echo "🧽 Clearing user cache..."
rm -rf ~/.cache/*

# 4. Remove old logs
echo "🪵 Cleaning old system logs..."
sudo journalctl --vacuum-time=3d

# 5. Update package list and upgrade system
echo "⬆️  Updating and upgrading system..."
sudo apt update && sudo apt upgrade -y

# 6. Clean thumbnail cache (optional)
echo "🖼️  Clearing thumbnail cache..."
rm -rf ~/.cache/thumbnails/*

# 7. Free up unused memory
echo "🧠 Flushing memory cache..."
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

echo "✅ System maintenance complete!"
