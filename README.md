# 🧹 Boost Scripts for Zorin OS Lite & Windows

## Overview

This repo contains two simple scripts to speed up and clean your system:

* `boost-zorin.sh` – For **Zorin OS Lite** (or any Ubuntu-based Linux)
* `boost-windows.bat` – For **Windows 10/11**

These scripts help clean cache, free up space, kill unnecessary processes, and improve overall performance with just one command or click.

---

## 🐧 boost-zorin.sh – Zorin OS Lite

### ✅ What it does:

* Clears APT and user cache
* Removes orphaned packages
* Cleans old logs
* Updates and upgrades the system
* Frees unused memory (drop\_caches)
* Deletes thumbnail cache

### 🚀 How to use:

```bash
# 1. Open terminal and create the script
nano boost-zorin.sh

# 2. Paste the script content and save (Ctrl+O, Enter, Ctrl+X)

# 3. Make it executable
chmod +x boost-zorin.sh

# 4. Run it
./boost-zorin.sh
```

### 💡 Tip:

Run this once a week or when your system feels slow.

---

## 🚟 boost-windows.bat – Windows 10/11

### ✅ What it does:

* Deletes temp and prefetch files
* Empties recycle bin and clipboard
* Flushes DNS cache
* Kills common background apps (e.g., OneDrive, Game Bar)
* (Optional) Clears RAM standby list using `EmptyStandbyList.exe`

### 🚀 How to use:

1. Open **Notepad**, paste the script, and save it as:

   ```
   boost-windows.bat
   ```

2. Right-click the file → **Run as Administrator**


---

## ⚠️ Notes

* Always **run scripts as administrator** (Linux: `sudo`, Windows: right-click).
* These scripts are designed to be safe, but review them before adding customizations.
* For best results, close all other apps before running.

---

Stay fast 
---


Rouge


