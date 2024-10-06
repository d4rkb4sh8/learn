 The `hostname` command in Linux is used to display and set the system's host name. Here are some key features along with examples:

### 1. Display Current Hostname
The basic usage of `hostname` command displays the current hostname of the system.
```bash
hostname
```
**Example:**
```bash
$ hostname
my-linux-machine
```

### 2. Set a New Hostname
You can also set a new hostname for your Linux system using the `hostname` command with the `-b` (or `--static`) option followed by the desired hostname. Note that you might need superuser privileges to change the hostname.
```bash
sudo hostnamectl set-hostname new-hostname
```
**Example:**
```bash
$ sudo hostnamectl set-hostname mynewhostname
[sudo] password for user: 
```
After running this command, you may need to restart your system or reboot it to apply the changes.

### 3. Display Hostname Information
The `hostname` command can also be used with the `-f` option to display the fully qualified domain name (FQDN). The FQDN includes the hostname and the domain name.
```bash
hostname -f
```
**Example:**
```bash
$ hostname -f
my-linux-machine.localdomain
```

### 4. Display Hostname with Domain Name
If you want to display only the hostname without the domain, you can use the `-A` option or its shorthand `-d`.
```bash
hostname -d
```
**Example:**
```bash
$ hostname -d
mynewhostname
```

### 5. Display All Hostname Information
To get a comprehensive view of all the information about your hostname, including the FQDN and other details, you can use:
```bash
hostname --all-info
```
**Example:**
```bash
$ hostname --all-info
Hostname: mynewhostname
  ...
Fully Qualified Domain Name: mynewhostname.localdomain
...
```

### 6. Display Help Information
To get help on the `hostname` command and its options, you can use:
```bash
hostname --help
```
**Example:**
```bash
$ hostname --help
Usage: hostname [OPTION]...
Print or set the system's host name.
  -b, --static    Use only the first segment of fully qualified domain name as the hostname
  -a, --alias     Print all aliases
  -A, --domain    Print only the domain name
  -d, --nodomain  Print hostname without any domain components
  -f, --fqdn      Print the fully qualified domain name
  -F, --file FILE  Read hostnames from FILE instead of config files
  -h, --help      Display this help and exit
  -V, --version   Output version information and exit
```
These examples should give you a good understanding of how to use the `hostname` command in Linux along with its various features.

