 The `ps` (process status) command in Linux is a powerful tool for displaying information about active processes. Here are some key features and their examples:

### Basic Usage
```sh
ps
```
This will display information about current processes running on the system.

### Displaying All Processes
To show all running processes, including those without a controlling terminal, you can use the `-e` or `--no-headers` option:
```sh
ps -e
```
or
```sh
ps --no-headers
```

### Showing Threads
Use the `-T` (threads) option to show threads within each process:
```sh
ps -T
```

### Displaying Full Command Line
To see the full command line of each process, use the `-f` (full format) option:
```sh
ps -f
```

### Showing User Information
Use the `-u` (user-oriented) option followed by a username or user ID to display processes for that specific user:
```sh
ps -u username
```
or
```sh
ps -u 1000
```

### Formatting Output
You can format the output using various options. For example, to show only the process ID and command line:
```sh
ps -o pid,cmd
```
To display more detailed information, you can use custom formats:
```sh
ps -eo pid,ppid,user,stat,%mem,rss,etime,cmd --no-headers
```

### Using `aux` Option
The most comprehensive way to view all processes is by using the `aux` options:
```sh
ps aux
```
This will show detailed information about all running processes, including user names, CPU usage, and memory usage.

### Examples of Common Usage
1. **Displaying All Processes with Full Command Line:**
   ```sh
   ps -ef
   ```
2. **Displaying Only My Processes:**
   ```sh
   ps -u $USER
   ```
3. **Displaying Threads for a Specific Process:**
   ```sh
   ps -L 1234
   ```

### Example Output
Here's an example of what the output might look like:
```
 USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
 root         1  0.0  0.0  19284 1736 ?        Ss     Nov05   0:03 init [3]
 root         2  0.0  0.0      0     0 ?        S<   Nov05   0:00 [kthreadd]
 root         3  0.0  0.0      0     0 ?        S    Nov05   0:06 [migration/0]
 ...
```

### Useful Aliases
You can create aliases in your `.bashrc` or `.zshrc` to make common `ps` commands easier:
```sh
alias psa='ps -e --format pid,ppid,user,stat,%mem,rss,etime,cmd --no-headers'
```
Then you can simply run:
```sh
psa
```

These features and examples should give you a good starting point for using the `ps` command to monitor processes on your Linux system.

