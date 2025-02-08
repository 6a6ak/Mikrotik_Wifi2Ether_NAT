# MikroTik mAP Lite: WiFi to Ethernet Bridge Configuration

This repository provides a configuration script to set up a **MikroTik mAP Lite router** to act as a **WiFi-to-Ethernet bridge**. With this configuration, the router can receive an internet connection from a WiFi network and share it through its Ethernet port.

## Features

- Connects to a WiFi network as a client.
- Shares the internet connection via the Ethernet port.
- Configures NAT to enable internet routing.
- Sets up a DHCP server for devices connected to Ethernet.

## Usage Instructions

### 1. Replace SSID and Password
Update the script with your WiFi network's details:
- Replace `SSID` with the WiFi network name.
- Replace `PASSWORD` with the WiFi password.

### 2. Save the Script
Save the script as a `.rsc` file (e.g., `mikrotik-config.rsc`) using a plain text editor.

### 3. Upload to MikroTik
1. Open **WinBox** or **WebFig**.
2. Navigate to **Files** and upload the `.rsc` file.

### 4. Run the Script
1. Open the MikroTik **Terminal**.
2. Run the following command:
   ```bash
   /import file-name=mikrotik-config.rsc
