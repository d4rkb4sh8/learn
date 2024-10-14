 Wireshark is a powerful network protocol analyzer that can be used to capture and analyze network traffic. It provides various commands through its console interface, which you can use from the Kali Linux terminal. Below are some useful Wireshark commands along with their explanations and examples:

### 1. Starting and Stopping Capture
- **Start capturing on a specific network interface:**
  ```sh
  wireshark -i eth0
  ```
  Example: `wireshark -i ens33` captures packets on the `ens33` network interface.

- **Stop capturing:**
  Press `Ctrl+C` in the terminal where Wireshark is running.

### 2. Saving Captured Data
- **Save captured data to a file:**
  ```sh
  wireshark -w output.pcap
  ```
  Example: `wireshark -w capture.pcap` saves the captured packets to a file named `capture.pcap`.

### 3. Displaying Help Information
- **Display general help information:**
  ```sh
  wireshark --help
  ```

- **Display help for specific commands:**
  ```sh
  wireshark <command> --help
  ```
  Example: `wireshark -i eth0 --help` provides help for the interface selection command.

### 4. Setting Capture Parameters
- **Set the maximum number of packets to capture:**
  ```sh
  wireshark -c 1000
  ```
  Example: `wireshark -c 500` captures only 500 packets.

- **Set the interface to capture on (replace eth0 with your interface name):**
  ```sh
  wireshark -i eth0
  ```
  Example: `wireshark -i ens33` captures packets on the `ens33` network interface.

### 5. Filtering Packets
- **Apply a display filter to capture only certain types of traffic:**
  ```sh
  wireshark -f "ip"
  ```
  Example: `wireshark -f "tcp port 80"` captures only packets on TCP port 80.

### 6. Exporting Data
- **Export captured data to a file in a specific format:**
  ```sh
  wireshark -O filename,type
  ```
  Example: `wireshark -O http,csv` exports HTTP traffic as CSV files.

### 7. Miscellaneous Commands
- **Enable or disable column display:**
  ```sh
  wireshark --show-columns <column_name>
  ```
  Example: `wireshark --show-columns ip.src` shows the source IP address in the columns.

- **Set preferences and configuration options:**
  ```sh
  wireshark -G
  ```
  This opens the Wireshark GUI for configuring various settings.

### Examples of Using Wireshark from the Terminal
1. Start capturing on `ens33` interface:
   ```sh
   sudo wireshark -i ens33
   ```

2. Capture packets and save to a file named `capture.pcap`:
   ```sh
   sudo wireshark -w capture.pcap
   ```

3. Capture only TCP traffic on port 80:
   ```sh
   sudo wireshark -f "tcp port 80"
   ```

4. Export captured HTTP traffic as CSV files:
   ```sh
   sudo wireshark -O http,csv
   ```

### Note
- **Superuser privileges** may be required for capturing network traffic on some interfaces. Use `sudo` to run Wireshark with elevated permissions.
- Ensure that the network interface name (`eth0`, `ens33`, etc.) is correct and corresponds to the interface you want to capture from.

These commands provide a basic overview of how to use Wireshark in a Kali Linux terminal environment. For more advanced usage, refer to the official Wireshark documentation or explore additional features through its graphical user interface.

