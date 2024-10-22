 Certainly! `nmap` (Network Mapper) is a powerful tool for network discovery and security auditing. Below are some common features of `nmap` along with their explanations and example usage. This will help you understand how to use `nmap` effectively from the Kali Linux terminal.

### 1. Basic Usage
```sh
nmap <target>
```
- **Example**: Scan a single IP address or hostname:
  ```sh
  nmap scanme.nmap.org
  ```

### 2. Scan Multiple Targets
```sh
nmap <target1> <target2> <target3>
```
- **Example**: Scan multiple targets:
  ```sh
  nmap 192.168.1.0/24 google.com
  ```

### 3. Save the Output to a File
```sh
nmap -oN <filename> <target>
```
- **Example**: Scan and save the output to a file:
  ```sh
  nmap -oN scan_result.txt example.com
  ```

### 4. Verbose Output
```sh
nmap -v <target>
```
- **Example**: Enable verbose output:
  ```sh
  nmap -vv example.com
  ```

### 5. Scan Specific Ports
```sh
nmap -p <port(s)> <target>
```
- **Example**: Scan specific ports (e.g., port 80 and port 443):
  ```sh
  nmap -p 80,443 example.com
  ```

### 6. Port Scan with Service Version Detection
```sh
nmap -sV <target>
```
- **Example**: Perform a version detection scan:
  ```sh
  nmap -sV example.com
  ```

### 7. OS Detection
```sh
nmap -O <target>
```
- **Example**: Attempt to detect the operating system of the target:
  ```sh
  nmap -O example.com
  ```

### 8. Ping Scan (Ping Scanning)
```sh
nmap -sn <target>
```
- **Example**: Perform a ping scan to check if hosts are up:
  ```sh
  nmap -sn 192.168.1.0/24
  ```

### 9. Aggressive Scan
```sh
nmap -A <target>
```
- **Example**: Perform an aggressive scan, including OS detection, version detection, script scanning, and traceroute:
  ```sh
  nmap -A example.com
  ```

### 10. Scan with User-Defined Scripts (NSE)
```sh
nmap --script <scriptname> <target>
```
- **Example**: Run a specific NSE script:
  ```sh
  nmap --script smb-enum-shares example.com
  ```

### 11. Scan with User-Defined Script Engines (NSE)
```sh
nmap -sC <target>
```
- **Example**: Run default NSE scripts:
  ```sh
  nmap -sC example.com
  ```

### 12. TCP SYN Ping Scan
```sh
nmap -sn -PS <target>
```
- **Example**: Perform a stealthy scan using TCP SYN ping:
  ```sh
  nmap -sn -PS 192.168.1.0/24
  ```

### 13. UDP Scan
```sh
nmap -sU <target>
```
- **Example**: Perform an UDP scan:
  ```sh
  nmap -sU example.com
  ```

### 14. Ping and Port Scan Combination
```sh
nmap -p 80 --script http-title <target>
```
- **Example**: Ping and perform a port scan with a specific script:
  ```sh
  nmap -p 80 --script http-title example.com
  ```

### 15. Scan Range of Ports
```sh
nmap -p 1-65535 <target>
```
- **Example**: Scan all ports:
  ```sh
  nmap -p 1-65535 example.com
  ```

### 16. Scan with Timing Templates
```sh
nmap --top-ports <number> <target>
```
- **Example**: Scan the top N most common ports:
  ```sh
  nmap --top-ports 100 example.com
  ```

These are some of the basic and advanced features of `nmap` that you can use from the Kali Linux terminal. For more detailed information, including all available options and scripts, you can refer to the official `nmap` documentation or simply type:
```sh
nmap --help
```

