# 🧹 Smart Windows Cleanup Script

A lightweight batch script that cleans temporary files, system cache, and browser junk to keep Windows running smoothly.

---

## 🚀 Features

- 🔐 Auto-elevates to Administrator  
- 🧼 Cleans:
  - User Temp (`%TEMP%`)
  - Windows Temp (`C:\Windows\Temp`)
  - Windows Prefetch (`C:\Windows\Prefetch`)
  - Browser cache (Chrome, Edge, Brave)
- 🌐 Supports Chromium-based browsers  
- ⚡ Fast and lightweight (pure batch script)  
- 🔇 Silent execution (suppresses errors)

---

## 🌐 Supported Browsers

- Google Chrome  
- Microsoft Edge  
- Brave Browser  

---

## ▶️ How to Use

### Option 1: Manual Run

1. Clone or download the repository:
   ```bash
   git clone https://github.com/BogamSubhashChandra/temporary-storage-and-internet-cache-cleaning.git

Open the .bat file
Right-click → Run as Administrator (recommended)
Wait for cleanup to finish
⚠️ Important Notes
All browsers will be force-closed before cleaning
Unsaved work in browsers may be lost
Deleted files are not moved to Recycle Bin
Use carefully on active work systems
🛠️ What It Cleans
Category	Location
User Temp	%TEMP%
Windows Temp	C:\Windows\Temp
Browser Cache	AppData (Chrome, Edge, Brave)
Prefetch Files	C:\Windows\Prefetch
🔧 Customization

You can modify the script to:

Add more browsers
Skip specific cleanup steps
Enable logging
Extend cleanup directories
🧑‍💻 Requirements
Windows 10 / 11
Administrator privileges
📜 License

This project is licensed under the MIT License.

You are free to:

Use
Modify
Distribute

See LICENSE file for full details.

💡 Disclaimer

This tool is provided as-is without any warranty.
Use at your own risk. Improper cleanup may affect system behavior.
