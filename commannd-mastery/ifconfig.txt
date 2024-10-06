 The `ifconfig` command in Linux is used to configure and display network interfaces. It provides a set of subcommands that allow you to manage IP, IPv6, and MAC address settings for network interfaces. Here are some of its features along with examples:

### Basic Usage
```bash
ifconfig
```
This will display the status of all network interfaces currently in use on your system.

### Displaying Interface Information
```bash
ifconfig eth0
```
This will show detailed information about the `eth0` interface.

### Adding an IP Address
```bash
ifconfig eth0 192.168.1.100 netmask 255.255.255.0 up
```
This command assigns a static IP address `192.168.1.100` with a netmask `255.255.255.0` to the `eth0` interface and brings it up (activates).

### Deleting an IP Address
```bash
ifconfig eth0 -allnet
```
This command removes all network addresses from the `eth0` interface.

### Bringing Up/Down an Interface
```bash
ifconfig eth0 up
ifconfig eth0 down
```
- `ifconfig eth0 up`: Brings up the `eth0` interface.
- `ifconfig eth0 down`: Brings down the `eth0` interface.

### Displaying IPv6 Information
```bash
ifconfig eth0 inet6 fe80::21e:aaff:fece:deed%eth0
```
This command shows the IPv6 address of the `eth0` interface.

### Setting a Specific IP Version
```bash
ifconfig eth0 inet6 fe80::21e:aaff:fece:deed%eth0
```
This is similar to the previous example but specifically sets the IPv6 address for the `eth0` interface.

### Adding a Point-to-Point Protocol (PPP) Interface
```bash
ifconfig ppp0 192.168.1.1 pointopoint 192.168.1.2 up
```
This command sets up a PPP connection with the IP address `192.168.1.1` and specifies the peer IP address as `192.168.1.2`.

### Displaying DHCP Leases (if using DHCP)
For systems configured to obtain IP addresses via DHCP, you might use:
```bash
dhclient eth0
```
This command can be used to renew or update the DHCP lease for the `eth0` interface.

### Examples of Output
When you run `ifconfig`, it will display something like this:
```
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.100  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::21e:aaff:fece:deed%eth0  prefixlen 64  scopeid 0x20<link>
        ether 00:1e:aa:ce:de:ed  txqueuelen 1000  (Ethernet)
        RX packets 12345  bytes 9876543 (9.4 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 54321  bytes 43210987 (41.2 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```
This output provides detailed information about the `eth0` interface, including its IP address, netmask, broadcast address, and various statistics like received and transmitted packets and bytes.

These examples cover some of the basic functionalities of the `ifconfig` command in Linux systems.

