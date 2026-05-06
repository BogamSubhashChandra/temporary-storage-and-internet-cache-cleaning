🧹 Smart Windows Cleanup Script

A simple yet effective batch script to automatically clean temporary files, browser cache, and system junk on Windows. Designed for quick maintenance with minimal user interaction.

🚀 Features
🔐 Auto-elevates to Administrator
🧼 Cleans:
User temp files (%TEMP%)
Windows temp files (C:\Windows\Temp)
Browser cache (Chrome, Edge, Brave)
Windows Prefetch files
🌐 Supports multiple Chromium-based browsers
⚡ Fast and lightweight (pure batch script)
🔇 Silent cleanup (suppresses errors)
📂 Supported Browsers
Google Chrome
Microsoft Edge
Brave Browser
▶️ How to Use

Download the script or clone the repository:

git clone https://github.com/your-username/smart-cleanup.git
Locate the .bat file.
Double-click to run
(It will automatically request administrator permissions)
Wait for the cleanup process to complete.
⚠️ Important Notes
All open browsers will be force-closed before cleaning.
Unsaved work in browsers may be lost.
Script deletes files permanently (no recycle bin).
🛠️ What It Cleans
Category	Location
User Temp	%TEMP%
Windows Temp	C:\Windows\Temp
Browser Cache	AppData (Chrome, Edge, Brave)
Prefetch Files	C:\Windows\Prefetch
🔧 Customization

You can easily modify the script to:

Add more browsers
Skip certain cleanup steps
Log deleted files
🧑‍💻 Requirements
Windows OS
Administrator privileges
📜 License

This project is licensed under the MIT License — feel free to use and modify.

💡 Disclaimer

Use this script and app(.exe) at your own risk. While it is safe for general cleanup, deleting system files improperly can affect system behavior.

## 📄 License

This project is licensed under the MIT License.
