 `Aircrack-ng` is a powerful set of tools for WiFi network discovery, wireless card testing, and security auditing. It primarily targets 802.11a/b/g/n wireless LANs but can also be used with other wireless protocols like Bluetooth and Zigbee. Below are some common features of `aircrack-ng` along with examples that you might find useful while using Kali Linux terminal:

### Basic Usage
1. **Starting a monitor mode**
   ```bash
   sudo airmon-ng start wlan0
   ```
   This command starts the wireless interface in monitor mode, allowing you to capture packets from surrounding WiFi networks.

2. **Displaying available interfaces**
   ```bash
   airmon-ng
   ```
   This will list all network interfaces and their states (up/down) along with some other details like driver types.

### Capturing Packets
1. **Starting packet capture**
   ```bash
   sudo airodump-ng --bssid <BSSID> -c <channel> -w capture wlan0mon
   ```
   This command captures packets from a specific BSSID (MAC address) on a specified channel, saving the captured data to files with the prefix "capture".

2. **Stopping packet capture**
   ```bash
   sudo pkill -9 airodump-ng
   ```
   You can terminate an ongoing `airodump-ng` session using this command.

### Analyzing Captured Packets
1. **Viewing captured packets**
   ```bash
   sudo airodump-ng --bssid <BSSID> -c <channel> -w capture wlan0mon
   ```
   After capturing packets, you can analyze them using `airodump-ng`.

2. **Cracking WEP/WPA keys**
   ```bash
   sudo aircrack-ng capture*
   ```
   This command attempts to crack the WEP or WPA key from the captured packets.

### Additional Features
1. **Channel hopping**
   ```bash
   sudo airodump-ng --bssid <BSSID> -c 6,11 -w capture wlan0mon
   ```
   This command captures packets on channels 6 and 11 simultaneously.

2. **Capturing specific BSSIDs only**
   ```bash
   sudo airodump-ng --bssid <BSSID> -c <channel> -w capture wlan0mon
   ```
   Capture packets only from the specified BSSID on a given channel.

3. **Using statistical analysis for target selection**
   ```bash
   sudo airodump-ng --band abg --bssid <BSSID> --showack -o csv --wpad wlan0mon > stats.csv
   ```
   This command generates a CSV file with statistics about the captured packets, helping in targeting specific networks for further actions like attacks or captures.

### Security and Privacy
1. **Setting custom channel**
   ```bash
   iwconfig wlan0 chan <channel>
   ```
   Adjusts the channel of your wireless interface to a specified value.

2. **Disabling encryption (WEP/WPA) on target networks for capturing data without permission**
   This is generally illegal and unethical, but for educational purposes only:
   ```bash
   sudo aireplay-ng --deauth <number of packets> -a <BSSID> wlan0mon
   ```
   This command deauthenticates clients from the target network. Use responsibly and always ensure you have permission to test or attack networks.

### Notes
- Always run `aircrack-ng` with elevated privileges (e.g., using `sudo`) as it interacts directly with your wireless hardware.
- Ensure that you understand and comply with local laws regarding WiFi monitoring and security testing. Unauthorized monitoring can be illegal and unethical.

These examples should help you get started with basic to advanced usage of `aircrack-ng` on Kali Linux. Always refer to the official documentation for more detailed information and options specific to each tool within the suite.

