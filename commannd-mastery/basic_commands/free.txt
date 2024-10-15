 The `free` command in Kali Linux is used to display information about the system's memory usage, including total, available, used, and shared memory. It also shows the amount of swap space if it is configured. Here are the main features and examples of using the `free` command:

### Features of `free` Command

1. **Display Total Memory:**
   - Shows the total amount of physical memory (RAM) available on the system.

2. **Display Available Memory:**
   - Indicates how much memory is currently free and can be used by applications without swapping.

3. **Display Used Memory:**
   - Shows the amount of memory that is actively being used by running processes.

4. **Display Shared Memory:**
   - Indicates the amount of memory which is in use for shared libraries, such as dynamic linking libraries (shared memory).

5. **Display Buffer Cache Memory:**
   - Shows the amount of memory used to buffer file system reads and writes.

6. **Display Swap Space Usage:**
   - If swap space is configured, it will display the total, used, free, and cached swap space.

### Examples

1. **Basic Usage:**
   ```bash
   free
   ```
   This command displays memory information in a human-readable format:
   ```
                total        used        free      shared  buff/cache   available
   Mem:         3968        2048        927          15        993        2878
   Swap:        4096           0        4096
   ```

2. **Human-Readable Format:**
   ```bash
   free -h
   ```
   This command shows memory information in a more readable format, using units like MB (megabytes):
   ```
               total        used        free      shared  buff/cache   available
   Mem:         3.9G        2.0G        914M        15M        976M        2.8G
   Swap:        4.0G          0B        4.0G
   ```

3. **Show Only Physical Memory (No Swap):**
   ```bash
   free -m | grep Mem
   ```
   This command filters the output to show only physical memory information:
   ```
   Mem:         3968        2048        927          15        993        2878
   ```

4. **Show Swap Information Only:**
   ```bash
   free -m | grep Swap
   ```
   This command filters the output to show only swap space information:
   ```
   Swap:        4096           0        4096
   ```

5. **Display Detailed Memory Statistics:**
   ```bash
   free -s 10
   ```
   This command will update and display memory statistics every 10 seconds:
   ```
   Every 10.0segons:
               total        used        free      shared  buff/cache   available
   Mem:         3968        2048        927          15        993        2878
   Swap:        4096           0        4096
   ```

These examples demonstrate how to use the `free` command in Kali Linux to monitor system memory and swap space.

