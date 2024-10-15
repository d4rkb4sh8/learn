 The `lpq` (line printer queue) command is used to query the status of a print job on a CUPS-enabled printer. It is part of the CUPS (Common UNIX Printing System) suite, which provides an interface for managing printing and handling print jobs. Here are some key features and examples of using the `lpq` command in Kali Linux:

### Key Features of `lpq`:
1. **Query Print Queue**: Lists all print jobs currently queued on a specified printer or default printers if none is specified.
2. **Detailed Information**: Provides detailed information about each job, including job ID, user, number of pages, size, and the time it was submitted.
3. **Status Updates**: Shows the current status of each job (e.g., "held", "printing", "queued").
4. **Filter by User**: Allows you to filter jobs by a specific user.
5. **Human-Readable Output**: Output is often formatted in a human-readable manner, making it easy to understand at a glance.

### Examples:
Here are some examples of how to use the `lpq` command with explanations:

#### Example 1: List Print Jobs on All Printers
```bash
lpq
```
**Explanation**: This command lists all print jobs across all connected printers.

#### Example 2: List Print Jobs on a Specific Printer
```bash
lpq -P printer_name
```
**Example**: `lpq -P myprinter`
**Explanation**: This command lists all print jobs queued for the specified printer "myprinter".

#### Example 3: Filter by User
```bash
lpq -U username
```
**Example**: `lpq -U john_doe`
**Explanation**: This command filters and shows only the print jobs submitted by the user "john_doe".

#### Example 4: Display Detailed Information
```bash
lpq -l -P printer_name
```
**Example**: `lpq -l -P myprinter`
**Explanation**: This command provides detailed information about each job on the specified printer, including more granular status details.

#### Example 5: Human-Readable Output
```bash
lpq -h
```
**Explanation**: This command toggles human-readable output format, making it easier to read and understand the queue status.

### Additional Options:
- `-a`: Display all jobs (including ones that are being held or delayed).
- `-o <option>`: Specify additional options for the output format.
- `-U <username>`: Filter by a specific username.
- `-P <printer>`: Specify a printer to query.

### Example Usage with Options:
```bash
lpq -a -l -P myprinter
```
**Explanation**: This command lists all print jobs, including held ones, and provides detailed information for the specified printer "myprinter".

By using these examples and options, you can effectively manage and monitor print queues on your CUPS-enabled printers in Kali Linux.

