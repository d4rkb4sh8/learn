 The `netstat` command is a powerful tool in Kali Linux used to display network connections, routing tables, interface statistics, and masquerade rules. Here are some of its features along with examples:

### 1. Displaying Network Connections
The most common use of `netstat` is to show active network connections (both incoming and outgoing).

```sh
netstat -a
```
This command will display all connections, both listening and established.

### 2. Displaying Listening Ports
To see which ports are open and listening on your machine, you can use:

```sh
netstat -l
```
This will list only the network interfaces that are listening for incoming connections.

### 3. Displaying Established Connections
If you want to see only the established connections, you can use:

```sh
netstat -t
```
This will display TCP connections in table format and include information about each connection, including the local address and port, the foreign address and port, state, PID/Program name.

### 4. Displaying UDP Connections
For UDP connections (which are not associated with TCP), you can use:

```sh
netstat -u
```
This will display only UDP connections.

### 5. Displaying Unix Sockets
If you need to see Unix domain sockets, you can use:

```sh
netstat -x
```
This will list Unix domain socket connections.

### 6. Displaying Detailed Information
To get more detailed information about network interfaces and their statistics, you can use:

```sh
netstat -i
```
This will display interface statistics, including the MTU (Maximum Transmission Unit), RX packets (received packets), TX packets (transmitted packets), errors, dropped, and overruns.

### 7. Displaying Routing Table
To see the current routing table, you can use:

```sh
netstat -r
```
This will display the kernel's IP routing table.

### 8. Combining Options
You can combine multiple options to get specific information. For example, to see both TCP connections and listening ports, you can do:

```sh
netstat -tln
```
This command will show all TCP connections, list the listening ports, and include interface details.

### Examples
Here are some practical examples of using `netstat` in Kali Linux:

1. **Check for Listening Ports:**
   ```sh
   netstat -l | grep tcp
   ```
   This will show only the TCP ports that are listening on your machine.

2. **Show All Connections and Their States:**
   ```sh
   netstat -tuln
   ```
   This command will display all TCP, UDP connections, their states, local addresses, foreign addresses, and PIDs of processes associated with these connections.

3. **Display Unix Sockets:**
   ```sh
   netstat -lx
   ```
   This will show Unix domain socket connections.

4. **Check for Established Connections:**
   ```sh
   netstat -t | grep ESTABLISHED
   ```
   This will list all established TCP connections.

By using these options and examples, you can effectively monitor network activities on your Kali Linux system.

