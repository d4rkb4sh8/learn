 `evilgrade` is a tool within the Kali Linux tools suite that is used for creating and injecting modified DHCP, DNS, and HTTP responses to target wireless clients during a Man-in-the-Middle (MiTM) attack. Below are some key features of the `evilgrade` command along with examples:

### Key Features

1. **DHCP Response Injection**: Modifies DHCP offers and packets to redirect clients to a rogue access point or provide custom settings.
   - Example: Redirecting all requests to a malicious Wi-Fi hotspot.
2. **DNS Spoofing**: Alters DNS responses to direct traffic to malicious servers or web pages.
   - Example: Forging DNS responses to send users to fake login pages instead of legitimate sites.
3. **HTTP Response Modification**: Changes the content and presentation of web pages seen by clients.
   - Example: Injecting ads into targeted websites or serving malware-infested content.
4. **Network Configuration**: Supports various network configurations including captive portals where users are forced to log in before accessing the internet.
5. **Targeted Attacks**: Can be configured to target specific MAC addresses or networks, making it more effective for selective attacks.
6. **Multiple Protocols**: Capable of handling multiple protocols simultaneously, allowing for complex attack scenarios.
7. **User Interface**: Provides a user-friendly interface for configuration and monitoring the attack progress.
8. **Logging and Reporting**: Captures detailed logs of all activities including captured credentials, IP addresses, etc.
9. **Cross-Platform Support**: Works on both Windows and Linux systems, extending its utility in different environments.

### Examples

#### Basic Usage
To start `evilgrade`, you can simply run the command:
```bash
evilgrade
```
This will launch the tool with a default configuration that you might want to customize according to your target network.

#### Configuring Evilgrade
You can configure `evilgrade` by editing the configuration file or using command-line arguments. Here are some example commands:

1. **Start with DHCP and DNS Configuration**:
   ```bash
   evilgrade -i <interface> -x <dhcp_file> -d <dns_server>
   ```
   Replace `<interface>` with your network interface name, `<dhcp_file>` with a custom DHCP file (if needed), and `<dns_server>` with the IP address of the DNS server you want to spoof.

2. **Using Specific MAC Address for Targeting**:
   ```bash
   evilgrade -i eth0 -m 00:11:22:33:44:55
   ```
   This command targets a specific client with MAC address `00:11:22:33:44:55` using the network interface `eth0`.

#### Starting Attacks
- **Starting DHCP and DNS Spoofing**:
  ```bash
  evilgrade -i eth0 -x examples/configs/basic.evxz
  ```
  This command uses a predefined configuration file (`examples/configs/basic.evxz`) to start spoofing both DHCP and DNS on the interface `eth0`.

- **Starting HTTP Response Modification**:
  ```bash
  evilgrade -i eth0 -m 00:11:22:33:44:55 -e examples/configs/basic.evxz
  ```
  This command targets a specific client with MAC `00:11:22:33:44:55` and uses the configuration from `examples/configs/basic.evxz` for HTTP response modification.

### Conclusion
`evilgrade` is a powerful tool that allows you to carry out sophisticated MiTM attacks by manipulating network traffic at various layers (DHCP, DNS, HTTP). It requires careful planning and execution, as it can have significant impacts on the targeted networks and users. Always ensure you have proper authorization before conducting such tests, and consider the potential consequences of your actions.

