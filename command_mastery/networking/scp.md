 The `scp` (secure copy) command is used to securely transfer files between a local and remote host over SSH. Below are some common features of the `scp` command along with examples:

### Basic Usage

#### Transfer a file from local to remote host
```sh
scp /path/to/local/file username@remote_host:/path/to/destination
```
**Example:**
```sh
scp /home/kali/Desktop/document.txt user@192.168.1.100:/home/user/Documents
```
This command will copy `document.txt` from Kali Linux (local host) to `/home/user/Documents` on the remote host with IP address `192.168.1.100`.

#### Transfer a file from remote host to local
```sh
scp username@remote_host:/path/to/source/file /path/to/destination/on/local
```
**Example:**
```sh
scp user@192.168.1.100:/home/user/Documents/document.txt /home/kali/Desktop
```
This command will copy `document.txt` from the remote host to `/home/kali/Desktop` on Kali Linux (local host).

### Using Wildcards
You can use wildcards (`*`) to transfer multiple files at once:

#### Transfer multiple files from local to remote
```sh
scp /path/to/local/files/* username@remote_host:/path/to/destination
```
**Example:**
```sh
scp /home/kali/Desktop/*.txt user@192.168.1.100:/home/user/Documents
```
This command will copy all `.txt` files from `/home/kali/Desktop` to `/home/user/Documents` on the remote host.

#### Transfer multiple files from remote to local
```sh
scp username@remote_host:/path/to/source/files/* /path/to/destination/on/local
```
**Example:**
```sh
scp user@192.168.1.100:/home/user/Documents/*.txt /home/kali/Desktop
```
This command will copy all `.txt` files from `/home/user/Documents` to `/home/kali/Desktop` on Kali Linux (local host).

### Recursive Transfer
The `scp` command can also be used to recursively transfer directories:

#### Transfer a directory from local to remote
```sh
scp -r /path/to/local/directory username@remote_host:/path/to/destination
```
**Example:**
```sh
scp -r /home/kali/Desktop/project user@192.168.1.100:/home/user/Projects
```
This command will copy the entire `project` directory from Kali Linux to the remote host.

#### Transfer a directory from remote to local
```sh
scp -r username@remote_host:/path/to/source/directory /path/to/destination/on/local
```
**Example:**
```sh
scp -r user@192.168.1.100:/home/user/Projects /home/kali/Desktop
```
This command will copy the entire `Projects` directory from the remote host to Kali Linux (local host).

### Specifying Port
You can specify a port number if SSH is running on a non-standard port:
```sh
scp -P port_number username@remote_host:/path/to/source/file /path/to/destination/on/local
```
**Example:**
```sh
scp -P 2222 user@192.168.1.100:/home/user/document.txt /home/kali/Desktop
```
This command will copy `document.txt` from the remote host to Kali Linux (local host) using port `2222`.

### Using SSH Configurations
You can use SSH configuration files (`~/.ssh/config`) to specify options for `scp`:
```sh
scp -C username@remote_host:/path/to/source/file /path/to/destination/on/local
```
**Example:**
```sh
scp -C user@192.168.1.100:/home/user/document.txt /home/kali/Desktop
```
This command will use compression for the file transfer (`-C` option).

These examples cover some of the basic and advanced features of the `scp` command in Kali Linux. You can further customize your transfers by using these options based on your specific requirements.

