 The `lsblk` (list block devices) command in Linux is used to display information about all block devices, including disks, partitions, and RAID arrays. It provides a tree-like view that shows the hierarchy of filesystems and mount points. Below are some features of the `lsblk` command along with examples:

### Basic Usage
```sh
lsblk
```
This will list all block devices in a simple format.

### Detailed Information
```sh
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT
```
This command provides detailed information about each device, including its name, size, type (e.g., disk, partition), and mount point.

### Human-Readable Sizes
```sh
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT --human
```
This will display sizes in a more readable format, such as KB, MB, GB.

### Tree View with Depth
```sh
lsblk -t
```
This shows the hierarchy of devices and filesystems in a tree view.

### JSON Output
```sh
lsblk -o +NAME,TYPE,SIZE,FSTYPE,MOUNTPOINT --json
```
This outputs information in JSON format, which can be useful for parsing with scripts or other tools.

### Include All Devices
```sh
lsblk -a
```
This includes all devices, even those that are not currently active (e.g., USB drives that are disconnected).

### Example Output
Here’s an example of what the output might look like:

```sh
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda           8:0    0 931.5G  0 disk /
├─sda1        8:1    0   24G  0 part /boot/efi
├─sda2        8:2    0   20G  0 part /
└─sda3        8:3    0 931.4G  0 part /home
sdb           8:16   0  1.8T  0 disk [SWAP]
sdc           8:32   0   50G  0 disk /mnt/data
```

### Explanation of Columns:
- **NAME**: The name of the device (e.g., sda, sdb).
- **MAJ:MIN**: Major and minor numbers of the device.
- **RM**: Removable Media indicator (1 for removable media, 0 otherwise).
- **SIZE**: Size of the device in bytes or a human-readable format.
- **RO**: Read-only flag (1 if read-only, 0 otherwise).
- **TYPE**: Type of the device (e.g., disk, partition).
- **MOUNTPOINT**: Mount point if the device is mounted.

### Examples with Commands:
```sh
# List all block devices including detailed information in human-readable format
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT --human

# Show the hierarchy of devices and filesystems as a tree
lsblk -t

# Output information in JSON format
lsblk -o +NAME,TYPE,SIZE,FSTYPE,MOUNTPOINT --json
```

These examples demonstrate how to use various options with `lsblk` to display different levels of detail about your block devices.

