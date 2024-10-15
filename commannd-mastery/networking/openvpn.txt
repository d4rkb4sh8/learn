 Sure, here are some common features and their examples for using the `openvpn` command in Kali Linux's terminal. OpenVPN is a software application that implements virtual private network (VPN) techniques to create secure point-to-point or site-to-site connections.

### Basic Usage
1. **Start an OpenVPN connection:**
   ```sh
   sudo openvpn /path/to/configfile.ovpn
   ```
   Example: `sudo openvpn /etc/openvpn/client.conf`

2. **Stop the OpenVPN connection:**
   You can stop the VPN by pressing `Ctrl+C` in the terminal where the OpenVPN client is running, or you can use the following command to terminate the process gracefully:
   ```sh
   sudo pkill -SIGTERM openvpn
   ```

### Configuration Files and Options
3. **List available configurations:**
   You might have multiple configuration files for different VPN servers in `/etc/openvpn/`. To list them, you can use:
   ```sh
   ls /etc/openvpn/
   ```

4. **Specify a specific configuration file:**
   If you want to connect to a specific server, specify the full path to its configuration file. For example:
   ```sh
   sudo openvpn /etc/openvpn/server1.conf
   ```

5. **Use environment variables:**
   You can use environment variables in your OpenVPN configuration files for flexibility. For example:
   ```ovpn
   # In client.conf
   env-var VPN_USER "username"
   env-var VPN_PASS "password"
   ```

6. **Set DNS servers:**
   To set custom DNS servers, you can use the `script-security` option and a script to modify the resolv.conf file:
   ```ovpn
   # In client.conf
   script-security 2
   up /path/to/up-script.sh
   down /path/to/down-script.sh
   ```

   Example `up-script.sh`:
   ```sh
   echo "nameserver 8.8.8.8" > /etc/resolv.conf
   echo "nameserver 8.8.4.4" >> /etc/resolv.conf
   ```

### Troubleshooting and Logs
7. **Check OpenVPN status:**
   To see the current status of the VPN connection, you can use:
   ```sh
   sudo systemctl status openvpn@client
   ```

8. **View logs:**
   OpenVPN logs are typically located in `/var/log/openvpn.log`. You can view them using:
   ```sh
   tail -f /var/log/openvpn.log
   ```

### Advanced Features
9. **Client configuration:**
   To create a new client configuration, you might want to use the `ovpn_env` script provided by OpenVPN to generate environment variables for your client:
   ```sh
   sudo ovpn_getconfig client > /etc/openvpn/client.conf
   ```

10. **Persistent connections:**
    To ensure that the VPN connection persists across reboots, you can set it to start automatically at boot:
    ```sh
    sudo systemctl enable openvpn@client
    ```

### Examples of Specific Commands and Configurations
- **Connecting to a specific server (server1):**
  ```sh
  sudo openvpn /etc/openvpn/server1.conf
  ```

- **Using environment variables for authentication:**
  In `/etc/openvpn/client.conf`, add:
  ```ovpn
   env-var VPN_USER "username"
   env-var VPN_PASS "password"
   ```

- **Setting custom DNS servers:**
  Create a script `up-script.sh` and modify the resolv.conf file:
  ```sh
  echo "nameserver 8.8.8.8" > /etc/resolv.conf
  echo "nameserver 8.8.4.4" >> /etc/resolv.conf
  ```

- **Checking status:**
  ```sh
  sudo systemctl status openvpn@client
  ```

### Conclusion
These examples cover some of the basic and advanced features of using `openvpn` in Kali Linux. For more detailed information, refer to the OpenVPN documentation or specific configuration files located in `/etc/openvpn/`.

