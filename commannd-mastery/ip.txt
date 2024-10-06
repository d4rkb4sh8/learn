 The `ip` command in Linux is a versatile tool for managing network interfaces and routing, including IP addresses, routes, and tunnels. Below are some of its features along with examples to illustrate each feature:

### 1. Display Network Interface Information
The most basic usage of the `ip` command is to display information about network interfaces.
```sh
sudo ip addr show
```
This will list all network interfaces along with their IP addresses, netmask, broadcast, and other details.

Example output:
```
2: ens33: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:0c:29:6e:b7:a8 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.100/24 brd 192.168.1.255 scope global dynamic ens33
       valid_lft 86399sec preferred_lft 86399sec
    inet6 fe80::20c:29ff:fe6e:b7a8/64 scope link
       valid_lft forever preferred_lft forever
```

### 2. Add and Remove IP Addresses
You can add or remove IP addresses from a network interface using the `ip addr` command.
```sh
sudo ip addr add 192.168.1.10/24 dev ens33
sudo ip addr del 192.168.1.10/24 dev ens33
```
These commands will add or remove the IP address `192.168.1.10` with netmask `24` from the interface `ens33`.

### 3. Set Up Static Routes
You can set up static routes using the `ip route` command.
```sh
sudo ip route add default via 192.168.1.1 dev ens33
```
This will add a default route through the gateway `192.168.1.1` on interface `ens33`.

### 4. Delete Routes
To delete a route, use the following command:
```sh
sudo ip route del default via 192.168.1.1 dev ens33
```
This will remove the default route through gateway `192.168.1.1` on interface `ens33`.

### 5. Manage Network Namespaces
You can create, list, and delete network namespaces using the `ip netns` command.
```sh
sudo ip netns add testns
sudo ip netns list
sudo ip netns del testns
```
These commands will create a new network namespace named `testns`, list all network namespaces, and then delete the `testns` namespace.

### 6. Link Aggregation (Bonding)
You can manage bond interfaces using the `ip link set` command.
```sh
sudo ip link add name bond0 type bond mode active-backup
sudo ip link set dev bond0 up
sudo ip addr add 192.168.1.10/24 dev bond0
```
These commands will create a bond interface named `bond0` in active-backup mode, bring it up, and assign an IP address to it.

### 7. Show Link Status
To display the status of network interfaces, use:
```sh
sudo ip link show
```
This will list all network interfaces along with their current status.

### 8. Manage Multicast Routing
You can manage multicast routing using the `ip maddr` command.
```sh
sudo ip maddr add 224.0.0.1 dev ens33
sudo ip maddr del 224.0.0.1 dev ens33
```
These commands will add or remove a multicast address `224.0.0.1` to/from the interface `ens33`.

### 9. Show IP Versions
To display information about IPv4 and IPv6 interfaces, use:
```sh
sudo ip -4 addr show
sudo ip -6 addr show
```
These commands will list only IPv4 or IPv6 interfaces respectively.

### Summary
The `ip` command is a powerful tool for managing network interfaces and routing in Linux. It provides a unified interface to perform various tasks related to networking, including adding/removing IP addresses, setting up routes, managing namespaces, and more. The examples provided above cover some of the most common usages of the `ip` command.

