 The `top` command in Kali Linux is a real-time system monitor that displays information about running processes and system utilization. Here are some key features and their examples:

### 1. Displaying Process Information
The main interface shows various metrics such as CPU usage, memory usage, and the list of running processes.

**Example:**
```sh
top
```
This will display a continuously updated list of all running processes along with their CPU usage and memory usage in real-time.

### 2. Sorting Data
You can sort the process information by different metrics such as PID, user, or command name using the `Shift + o` shortcut.

**Example:**
```sh
top -o USER
```
This will display processes sorted by user.

### 3. Filtering Processes
You can filter the displayed processes based on specific criteria like a particular username, process name, etc.

**Example:**
```sh
top | grep ssh
```
This will show only the `ssh` related processes in the list.

### 4. Displaying Detailed Information
Press `c` to display full command paths and more detailed information about each process.

**Example:**
```sh
top -d 2
```
This will update the display every 2 seconds.

### 5. Killing a Process
You can kill a running process using its PID (Process ID). Press `k` to prompt for entering the PID and then type `KILL` or `9`.

**Example:**
```sh
top
# At the top right corner, press 'k'
# Enter the PID of the process you want to kill (e.g., 1234)
# Type KILL or press 9 and then enter
```
This will terminate the specified process.

### 6. Displaying Load Average
The load average shows the system load over varying time periods, which is useful for understanding how busy the system is.

**Example:**
```sh
top -l 1
```
This will show a single line of information about the current system load.

### 7. Displaying Memory Information
Press `m` to sort processes by memory usage.

**Example:**
```sh
top -o %MEM
```
This will display processes sorted by memory usage.

### 8. Graphical Mode (X11)
If you are using a graphical X11 interface, you can switch to a more visual representation with the `V` key and then pressing `c`.

**Example:**
```sh
top -b | less
```
This will output detailed information in batch mode.

### 9. Real-Time Mode
The `t` key toggles real-time mode, showing CPU usage as a percentage over time.

**Example:**
```sh
top -d 1 -u 50
```
This will update the display every second and only show processes with more than 50% CPU usage.

### 10. Exiting `top`
To exit `top`, you can press `q`.

**Example:**
```sh
top
# At the top right corner, press 'q' to quit
```

These features provide a comprehensive view of system performance and allow for interactive management of running processes in Kali Linux.

