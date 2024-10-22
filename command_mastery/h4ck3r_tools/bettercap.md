 BetterCAPE is a powerful and flexible framework for pentesting Wi-Fi networks, capturing packets, and injecting custom CAPTIVE PORTALs. It simplifies various tasks related to wireless network attacks, such as MITM (Man-In-The-Middle) attacks, DNS spoofing, ARP poisoning, session hijacking, and more. Below are some of the key features provided by BetterCAPE along with examples:

### 1. **Installation**
   - Install BetterCAPE on Kali Linux using the following command:
     ```sh
     sudo apt-get install bettercap
     ```

### 2. **Basic Usage**
   - Start BetterCAPE in monitor mode to capture packets from a specific network interface:
     ```sh
     sudo bettercap
     ```
   - By default, it starts in interactive mode where you can type commands. To see the available commands and options, press `TAB` for completion suggestions or simply type `help`.

### 3. **MITM (Man-In-The-Middle) Attack**
   - Perform a MITM attack on a specific target:
     ```sh
     set arp.spoof true
     arp.spoof ON
     ```
   - Capture HTTP traffic for further analysis or manipulation:
     ```sh
     set http.proxy false
     set http.spoof true
     ```

### 4. **DNS Spoofing**
   - Change DNS responses to redirect all queries to a specific server (e.g., Google's public DNS):
     ```sh
     set dns.spoof true
     set dns.server 8.8.8.8
     ```

### 5. **Custom CAPTIVE PORTAL**
   - Inject a custom HTML page as a captive portal:
     ```sh
     set web.template ./path/to/your/captive_portal_template.html
     set web.enabled true
     ```
   - You can also customize the DNS settings for the captive portal:
     ```sh
     set dns.spoof true
     set dns.server 192.168.1.1
     ```

### 6. **Session Hijacking**
   - Sniff session tokens or credentials from HTTP traffic:
     ```sh
     use sniff/http
     start()
     ```
   - BetterCAPE will capture and log HTTP requests, including cookies and other sensitive information.

### 7. **Wireless Network Attacks**
   - Perform various wireless network attacks such as deauthentication attacks:
     ```sh
     set wifi.show false
     use airodump/deauth /path/to/outputfile
     start()
     ```
   - This will target a specific client and force it to disconnect from the network.

### 8. **Scripting**
   - Use BETTERCAP_RC for scripting:
     ```sh
     cat <<EOF > ~/.bettercap_rc
     set arp.spoof true
     arp.spoof ON
     EOF
     bettercap
     ```
   - You can also use Ruby or Python scripts within BetterCAPE by extending the functionality with plugins.

### 9. **Reporting**
   - Generate detailed reports of the attacks and captured data:
     ```sh
     save /path/to/outputfile
     report /path/to/report.html
     ```

### Example Commands in Action

#### Basic MITM Setup:
```sh
sudo bettercap
set arp.spoof true
arp.spoof ON
```

#### DNS Spoofing to Google's Public DNS:
```sh
sudo bettercap
set dns.spoof true
set dns.server 8.8.8.8
```

#### Injecting a Custom CAPTIVE PORTAL:
```sh
sudo bettercap
set web.template ./path/to/custom_captive_portal.html
set web.enabled true
```

### Conclusion
BetterCAPE is an excellent tool for wireless network pentesting and capturing sensitive data in transit. It simplifies various attacks by providing a user-friendly interface with extensive command options. By leveraging its features, you can effectively perform MITM attacks, DNS spoofing, custom CAPTIVE PORTAL injections, and more to assess the security posture of your target networks.

