 The `df` (disk free) command in Kali Linux is used to display information about the amount of disk space available on a mounted file system. Here are some key features and examples of how you can use it:

### Basic Usage
```bash
df
```
This will display the default output, showing disk space usage for all mounted filesystems.

### Display in Human-Readable Format
```bash
df -h
```
This command displays the available disk space in a human-readable format (e.g., MB, GB).

### Display Specific Filesystems
You can specify which filesystem to display by using its mount point:
```bash
df /home
```
This will show the disk usage for the `/home` directory.

### Display All Filesystems
To include pseudo, network, and removable filesystems in addition to directories:
```bash
df -a
```

### Display Disk Space in Blocks
For a more detailed view including block size:
```bash
df -B 1024
```
This will display the disk usage in 1KB blocks.

### Show Percentage of Use
To see the percentage of used space on each filesystem:
```bash
df -P
```

### Display Extended Attributes
For detailed information including inode usage and file system attributes:
```bash
df -i
```

### Example Output Interpretation
Here's an example output from `df`:
```
Filesystem      Size  Used Avail Use% Mounted on
udev            1.9G     0  1.9G   0% /dev
tmpfs           392M   56M  336M  14% /run
/dev/sda1        98G   74G   20G  79% /
tmpfs           2.0G   12K  2.0G   1% /dev/shm
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
/dev/loop0       86M   86M     0 100% /snap/core18/2397
/dev/loop1      150M  150M     0 100% /snap/lxd/22409
```
- **Filesystem**: The type of filesystem.
- **Size**: Total size of the partition or file system.
- **Used**: Amount of space that is used.
- **Avail**: Available space for use.
- **Use%**: Percentage of the disk that is in use.
- **Mounted on**: The directory where the filesystem is mounted.

### Example Commands with Output
1. **Display human-readable sizes:**
   ```bash
   df -h
   ```
   This will show something like:
   ```
   Filesystem      Size  Used Avail Use% Mounted on
   udev            1.9G     0  1.9G   0% /dev
   tmpfs           392M   56M  336M  14% /run
   ```

2. **Display disk space for a specific directory:**
   ```bash
   df /home
   ```
   This will show the usage statistics for the `/home` directory.

### Useful Applications
- Monitoring overall disk space and usage patterns across different filesystems.
- Ensuring you do not run out of space on critical file systems, especially when using Kali Linux for penetration testing where you might need to test various tools and configurations that consume disk space.

By understanding these features and how to use them with `df`, you can efficiently manage and monitor the disk usage in your Kali Linux environment.

