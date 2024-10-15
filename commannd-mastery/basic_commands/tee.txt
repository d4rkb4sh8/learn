 The `tee` command in Kali Linux is a versatile tool that allows you to both display and write data to files. It can be particularly useful for logging commands or piping output between processes. Here are some key features of the `tee` command along with examples:

### Basic Usage
The basic syntax of `tee` is as follows:
```sh
tee [OPTION]... [FILE]...
```
- Displays input to standard output (usually the terminal).
- Writes a copy of the input to all specified files.

#### Example 1: Displaying and Writing to a File
```sh
echo "Hello, Kali!" | tee hello.txt
```
This command will display `"Hello, Kali!"` on the terminal and also write it to the file `hello.txt`.

### Appending Output to a File
By default, `tee` overwrites the content of files. To append to a file instead, use the `-a` option:
```sh
echo "Appending this line." | tee -a hello.txt
```
This will add the text `"Appending this line."` to the end of `hello.txt`.

### Handling Multiple Files
You can specify multiple files with the `tee` command, and it will write to each one:
```sh
echo "Writing to file1.txt and file2.txt" | tee file1.txt file2.txt
```
Both `file1.txt` and `file2.txt` will contain the same text.

### Using with Piping
Since `tee` writes data to files, it is often used in conjunction with command output:
```sh
ls -l | tee list.txt
```
This lists directory contents and simultaneously saves them to `list.txt`.

### Redirecting Output
You can also use redirection operators together with `tee`:
```sh
cat file.txt | tee -i newfile.txt
```
If `newfile.txt` exists, it will be overwritten by default. The `-i` option ignores errors when writing to files if they already exist.

### Suppressing Output
To suppress the display of command output while still writing to a file, you can redirect both standard output and error:
```sh
your_command 2>&1 | tee -a logfile.txt
```
This captures all output from `your_command` (standard output and standard error) and appends it to `logfile.txt`.

### Summary
- **Basic Usage**: Displays text on the terminal and writes it to a file.
- **Appending Output**: Appends data to an existing file using the `-a` option.
- **Multiple Files**: Writes to multiple files specified by the command line.
- **Piping with Other Commands**: Used in conjunction with other commands to both display and log their output.
- **Redirection and Suppression**: Works well with redirection operators for flexible logging scenarios.

These examples should give you a good starting point for using `tee` in your Kali Linux terminal sessions, helping you manage command outputs efficiently.

