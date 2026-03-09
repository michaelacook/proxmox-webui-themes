This project is forked from [Happyrobot33's PVEThemes project](https://github.com/Happyrobot33/PVEThemes). This is a great project, and I wanted introduce some of my own changes and a complete overhaul of the themes while keeping the simple and elegant project structure intact.

# Supported Proxmox Versions
- 7.4
- 8.0
- 9.0

## UI Tweaks
there is a few additional tweaks that can be enabled using the script. These are:
- Hide the "no valid subscription" warning
- Add update buttons to the theme selector panel itself
- Add a progress bar to show how much ram ZFS Cache is using

## Installation
Run the following commands in your PVE instance:
```bash
git clone https://github.com/michaelacook/proxmox-webui-themes
cd proxmox-webui-themes
chmod +x install.sh
./install.sh
```

Or this one-liner:
```bash
git clone https://github.com/michaelacook/proxmox-webui-themes && cd proxmox-webui-themes && chmod +x install.sh && ./install.sh
```

if you have ran the install.sh script before, you can instead just run the run.sh script
```bash
chmod +x run.sh
./run.sh
```

if you are running into issues updating the script, run the following commands:
```bash
git pull
chmod +x install.sh
./install.sh
```
This should hopefully fix any issues.

Theme images incoming shortly.
