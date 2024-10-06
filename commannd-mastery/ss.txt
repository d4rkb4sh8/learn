 The `ss` command in Linux is a powerful tool for displaying various network connections, including sockets, which can be used as an alternative to older `netstat` command. Here are some key features and examples of how to use the `ss` command:

### Basic Usage
```sh
# Display all TCP connections
sudo ss -t

# Display all UDP connections
sudo ss -u

# Display both TCP and UDP connections
sudo ss -tu
```

### Examples with Output Interpretation
1. **Displaying All Network Connections:**
   ```sh
   sudo ss -a
   ```

2. **Displaying TCP Connections for a Specific Port (e.g., port 80):**
   ```sh
   sudo ss -t state established '( dport = :http or sport = :http )'
   ```

3. **Displaying UDP Connections for a Specific IP and Port:**
   ```sh
   sudo ss -u src 192.168.1.100 port 53
   ```

4. **Displaying Established Connections Only:**
   ```sh
   sudo ss state established
   ```

5. **Displaying Listening Sockets on a Specific Port (e.g., port 80):**
   ```sh
   sudo ss -l src :http
   ```

6. **Displaying Foreign Addresses for Established Connections:**
   ```sh
   sudo ss state established '( dport = :http or sport = :http )' -o
   ```

### Examples with Filters and Formats
1. **Displaying TCP Connections to a Specific IP Address (e.g., 192.168.1.1):**
   ```sh
   sudo ss dst 192.168.1.1 tcp dport = :http
   ```

2. **Displaying Source and Destination for Established Connections:**
   ```sh
   sudo ss state established '( dport = :http or sport = :http )' -o
   ```

3. **Displaying Timestamps on Connections:**
   ```sh
   sudo ss -o state established '( dport = :http or sport = :http )' ts
   ```

### Examples with JSON Output
```sh
sudo ss -t -o state established '( dport = :http or sport = :http )' -j
```

### Examples with Human-Readable Format
```sh
sudo ss -t -o state established '( dport = :http or sport = :http )' -h
```

### Examples with Extended Information
```sh
sudo ss -e
```

### Examples with Socket Statistics
```sh
sudo ss -s
```

### Summary of Key Features:
- **Displaying all network connections:** `ss -a`
- **Displaying TCP connections:** `ss -t`
- **Displaying UDP connections:** `ss -u`
- **Displaying established connections:** `ss state established`
- **Filtering by port:** `dst/src IP:port`, `dport/sport = :port`
- **Formatted output:** `-o`, JSON output: `-j`, human-readable: `-h`
- **Extended information:** `-e`
- **Socket statistics:** `-s`

These examples should help you get started with using the `ss` command to monitor and understand network connections in Linux.

