 `nmcli` is a command-line tool for managing network connections and devices in Linux, part of NetworkManager. It provides a way to interact with networking settings through a user-friendly interface or scripts using shell commands. Here are some common features along with examples of how to use them in Kali Linux:

### 1. Showing Network Overview
To get an overview of all network connections and devices, you can use the following command:
```bash
nmcli general status
```
**Example:**
```bash
kali@kali:~$ nmcli general status
GENERAL.STATE        : connected
GENERAL.CONNECTION   : eth0
GENERAL.IP4.ADDRESS  : 192.168.1.100/24
GENERAL.IP4.GATEWAY  : 192.168.1.1
GENERAL.IP4.DNS      : 8.8.8.8, 8.8.4.4
```

### 2. Adding a New Network Connection
To add a new connection (e.g., Wi-Fi or ethernet), you can use the `nmcli con add` command:
```bash
nmcli con add type <type> con-name <name> ifname <interface> ip4 <ipaddress>/<subnetmask> gw4 <gateway>
```
**Example for adding a Wi-Fi connection:**
```bash
nmcli con add type wifi con-name home_wifi ifname wlan0 ssid "MyNetwork"
nmcli con modify home_wifi wifi-sec.key-mgmt wpa-psk
nmcli con modify home_wifi wifi-sec.psk "mysecretpassword"
```

### 3. Listing All Connections
To list all network connections, you can use:
```bash
nmcli con show
```
**Example:**
```bash
kali@kali:~$ nmcli con show
NAME      UUID                                  TYPE            DEVICE
eth0      12345678-9abc-defg-hijk-lmno12345678  ethernet        eth0
home_wifi  12345678-9abc-defg-hijk-lmno12345678  wifi            wlan0
```

### 4. Activating a Connection
To activate an existing connection, use:
```bash
nmcli con up <connection_name>
```
**Example:**
```bash
nmcli con up home_wifi
```

### 5. Deleting a Connection
To delete a network connection, you can use:
```bash
nmcli con del <connection_name>
```
**Example:**
```bash
nmcli con del home_wifi
```

### 6. Checking Device Status
To check the status of specific network devices, use:
```bash
nmcli dev status
```
**Example:**
```bash
kali@kali:~$ nmcli dev status
DEVICE  TYPE      STATE     CONNECTION
eth0    ethernet  connected home_wifi
wlan0   wifi      connected home_wifi
```

### 7. Setting DNS Servers
To set custom DNS servers, you can use:
```bash
nmcli con modify <connection_name> ipv4.dns "8.8.8.8, 8.8.4.4"
nmcli con up <connection_name>
```
**Example:**
```bash
nmcli con modify home_wifi ipv4.dns "8.8.8.8, 8.8.4.4"
nmcli con up home_wifi
```

### 8. Adding a New Ethernet Connection
To add a new ethernet connection, use:
```bash
nmcli con add type ethernet con-name eth0 ifname eth0 ip4 <ipaddress>/<subnetmask> gw4 <gateway>
```
**Example:**
```bash
nmcli con add type ethernet con-name eth0 ifname eth0 ip4 192.168.1.100/24 gw4 192.168.1.1
```


### 9. List available wifi networks nearby

```bash
nmcli device wifi list
```

IN-USE  BSSID              SSID                 MODE   CHAN  RATE        SIGNAL  BARS  SECURITY  
        7A:8C:B5:4E:1E:88  Libertad             Infra  10    270 Mbit/s  100     ▂▄▆█  WPA2      
*       72:8C:B5:4E:1E:8F  Libertad             Infra  149   270 Mbit/s  100     ▂▄▆█  WPA2      
        C0:FF:D4:AC:8C:47  CRAZYCATLADY         Infra  11    130 Mbit/s  74      ▂▄▆_  WPA2      
        98:DE:D0:8D:0A:B1  Libertad_EXT_2.4GHz  Infra  10    130 Mbit/s  67      ▂▄▆_  WPA2      
        04:71:53:95:E4:D4  CWC-9954797          Infra  48    540 Mbit/s  55      ▂▄__  WPA2      
        F8:53:29:34:A3:E8  Crazy Cat Lady 2g    Infra  4     130 Mbit/s  49      ▂▄__  WPA1 WPA2 
        F6:57:40:D4:D1:45  Flow Wi-Fi           Infra  6     130 Mbit/s  49      ▂▄__  --        
        E4:57:40:D4:D1:45  CWC-9954797          Infra  6     130 Mbit/s  47      ▂▄__  WPA1 WPA2 
        04:71:53:95:E4:FA  CWC-9954797          Infra  11    130 Mbit/s  39      ▂▄__  WPA2      
        04:71:53:95:E4:D3  CWC-9954797          Infra  1     130 Mbit/s  37      ▂▄__  WPA2      
        F8:53:29:34:A3:EC  Crazy Cat Lady 5g    Infra  149   540 Mbit/s  35      ▂▄__  WPA1 WPA2 
        70:3A:CB:EA:E4:63  haveaseeG            Infra  6     130 Mbit/s  30      ▂___  WPA2      
        E4:57:40:D4:D1:46  CWC-9954797          Infra  48    405 Mbit/s  29      ▂___  WPA1 WPA2 
        F6:57:40:D4:D1:46  Flow Wi-Fi           Infra  48    405 Mbit/s  29      ▂___  --        
        04:71:53:95:E4:FB  CWC-9954797          Infra  48    540 Mbit/s  25      ▂___  WPA2      
        D8:6C:63:DD:78:F5  Shandnet Boost       Infra  6     130 Mbit/s  22      ▂___  WPA2      
        AC:D7:5B:E3:C7:21  LIB-8936349          Infra  6     260 Mbit/s  17      ▂___  WPA2      


These examples cover some of the basic and advanced functionalities provided by `nmcli` in Kali Linux. You can customize these commands based on your specific networking needs.
