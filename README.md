# Flatgrep ⚡
> Automated searches for boring CLI tools.

Tired of typing by hand `flatpak run com.something.veryobnoxious`?  
Try **Flatgrep** for fuzzy search and grep what you want in just seconds. 

* **Quick test :** 
```bash
flatgrep search "mpv" --flathub 
```

> [!TIP] 
> Without the `--flathub` flag it searches for installed flatpaks

| Action                          | Linux Command                          |
|---------------------------------|----------------------------------------|
| **Search on Flathub**           | `flatgrep search "app name" --flathub` |
| **List locally installed apps** | `flatgrep search "app name"`           |
| **Install an app from Flathub** | `flatgrep install "app name"`          |
| **Run an app**                  | `flatgrep run "app name"`              |
| **Uninstall an app**            | `flatgrep uninstall "app name"`        |

### Released Features ✅
- [x] Search installed Flatpak app IDs.
- [x] Copy app IDs to the clipboard.
- [x] Install Flatpaks via fuzzy search with `--flathub` flag.
- [x] Rich-text console.
- [x] Run Flatpaks with `run` mode 'feature: 2025-09-15'

### Planned 🛠️
- [ ] Write installation guide
- [ ] Write documentation
- [ ] Make search better by also searching by app names not only app ids

### Potential Features 🤔
- [ ] Other package managers like dnf/pacman/aur helpers.
