 `evilginx2` is a powerful and flexible man-in-the-middle (MITM) attack framework primarily designed for phishing attacks on Wi-Fi networks. It allows attackers to capture credentials, cookies, and session tokens from victims by impersonating legitimate wireless access points. Below are some key features of `evilginx2`, along with examples that you can run in a Kali Linux terminal:

### 1. Installation
You don't need to install `evilginx2` manually since it is included in several pentesting distributions like Kali Linux. However, if you want to ensure it's up-to-date or reinstall it, you can do so using the following commands:
```bash
# Update package lists and upgrade all packages
sudo apt update && sudo apt upgrade -y

# Install evilginx2 (if not already installed)
sudo apt install evilginx2 -y
```

### 2. Basic Usage
To run `evilginx2`, you need to have a pre-built Phishing page in place, which can be generated using the `generate-phish` command. Here’s how you can do it:

#### Generate Phishing Page
```bash
sudo evilginx2 -c /path/to/config_file
```
Example:
```bash
sudo evilginx2 -c ~/evilginx2/config/config.yml
```

### 3. Configuration File
The configuration file (`config.yml`) contains all the necessary settings for `evilginx2`. It includes details about the phishing page, redirection URLs, and other parameters. Example config snippet:
```yaml
targets:
  - name: "Example Target"
    url: "http://example.com"
    gateways: ["192.168.1.1"] # Replace with your router's IP
```
To edit the configuration file, you can use a text editor like `nano`:
```bash
sudo nano ~/evilginx2/config/config.yml
```

### 4. Starting Evilginx2
After setting up the configuration file and ensuring the phishing page is generated, start `evilginx2` with:
```bash
sudo evilginx2 -c /path/to/config_file
```
Example:
```bash
sudo evilginx2 -c ~/evilginx2/config/config.yml
```

### 5. Stopping Evilginx2
To stop `evilginx2`, simply press `Ctrl+C` in the terminal where it is running, or you can use the following command to forcefully terminate the process:
```bash
sudo pkill -f evilginx2
```

### 6. Updating Evilginx2
Check for updates and update `evilginx2` if a newer version is available:
```bash
cd ~/evilginx2
git pull origin master
```

### 7. Advanced Features
#### Impersonating Specific Websites
You can specify multiple targets in the configuration file to impersonate different websites. For example:
```yaml
targets:
  - name: "Target 1"
    url: "http://example1.com"
    gateways: ["192.168.1.1"]
  - name: "Target 2"
    url: "http://example2.com"
    gateways: ["192.168.1.1"]
```
#### Using Pre-built Phishing Pages
`evilginx2` can use pre-built phishing pages from the `phish-ng` repository for faster setup and easier customization. To clone and use a pre-built page, you might need to follow additional steps depending on how it is integrated into your setup.

#### Capturing Credentials
When a victim logs in via the imposter site, their credentials are captured by `evilginx2`. You can view these captured credentials in real-time or later analyze them from log files.
```bash
cat /root/logs/log.txt
```

### Conclusion
`evilginx2` is a versatile tool that can be used to conduct phishing attacks and capture sensitive information from victims connecting to compromised Wi-Fi networks. By following the steps above, you can set up and use `evilginx2` for your testing purposes in Kali Linux. Always ensure you have permission to perform these actions on any network you intend to attack.

