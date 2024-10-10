 The `fdisk` command in Linux is a powerful tool for partitioning and managing disk drives. It provides a text-based interface to create, delete, modify, and display partitions on IDE, SCSI, and SATA disks. Below are some of the key features of the `fdisk` command along with examples.

### Basic Usage
To use `fdisk`, you typically run it from the terminal as root (using sudo if necessary):
```sh
sudo fdisk /dev/sdX
```
Replace `/dev/sdX` with your disk device, e.g., `/dev/sda` or `/dev/nvme0n1`.

### Features and Examples

#### 1. Displaying Partitions
To list the partitions on a disk:
```sh
Command (m for help): p
```
This will display information about all partitions on the disk, including their type, size, start sector, and end sector.

#### 2. Adding a New Partition
To create a new partition:
```sh
Command (m for help): n
```
You'll be prompted to choose between primary and extended partitions. After selecting `n`, you can specify the starting sector or accept the default by pressing Enter. Then, define the size of the partition using sectors, cylinders, or kilobytes (k), megabytes (m), gigabytes (g). For example:
```sh
Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical drives)
Select (default p): p
First sector (2048, default): 
Using default value 2048
Last sector, +sectors or +size{K,M,G} (1048576, default): 
Using default value 1048576
```
This will create a primary partition starting from the second sector to the end of the disk.

#### 3. Deleting a Partition
To delete an existing partition:
```sh
Command (m for help): d
Partition number (1, default 1): 
```
Enter the partition number you want to delete.

#### 4. Writing Changes
After making changes, write the table to disk and exit:
```sh
Command (m for help): w
```
This will prompt you to save any changes before exiting `fdisk`.

### Examples

**Example 1: Adding a New Partition**
```sh
sudo fdisk /dev/sdb

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical drives)
Select (default p): p
First sector (2048, default): 
Using default value 2048
Last sector, +sectors or +size{K,M,G} (1048576, default): 
Using default value 1048576
```
This will create a new primary partition on `/dev/sdb`.

**Example 2: Deleting a Partition**
```sh
sudo fdisk /dev/sdc

Command (m for help): d
Partition number (1, default 1): 
```
This will delete the first partition on `/dev/sdc`.

### Additional Commands
- **Creating an extended partition**: Use `e` to create an extended partition.
- **Creating logical partitions**: Inside an extended partition, use `n` multiple times to create logical partitions.
- **Setting the bootable flag**: Use `a` to set or clear the bootable flag for a partition.

### Conclusion
The `fdisk` command is powerful but has limitations compared to modern partitioning tools like `gdisk` and `parted`. For more advanced partitioning tasks, consider using these alternatives. However, `fdisk` remains useful for quick disk management operations on legacy systems or when other tools are not available.

