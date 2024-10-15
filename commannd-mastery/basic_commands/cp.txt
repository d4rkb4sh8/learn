 The `cp` (copy) command in Kali Linux is used to copy files and directories. Below are some common features and their examples:

### Basic Usage
```bash
cp source_file destination_file
# Example: Copying a file named 'example.txt' to '/home/kali/new_folder/'
cp example.txt /home/kali/new_folder/
```

### Copying Directories
```bash
cp -r source_directory destination_directory
# Example: Copying the directory named 'documents' to '/home/kali/backup/'
cp -r documents /home/kali/backup/
```

### Overwriting Existing Files
By default, `cp` will not overwrite existing files. To force copying and overwriting an existing file, you can use the `-f` (force) option:
```bash
cp -f source_file destination_file
# Example: Copying 'example.txt' to '/home/kali/new_folder/' and forcing overwrite if it exists
cp -f example.txt /home/kali/new_folder/
```

### Preserving Metadata (Permissions, Timestamps)
To preserve the metadata of the source file when copying, you can use the `-p` option:
```bash
cp -rp source_directory destination_directory
# Example: Copying 'documents' directory to '/home/kali/backup/' and preserving metadata
cp -rp documents /home/kali/backup/
```

### Interactive Confirmation
For copying directories, you can use the `-i` (interactive) option to get a confirmation before overwriting files:
```bash
cp -ri source_directory destination_directory
# Example: Copying 'documents' directory to '/home/kali/backup/' with interactive confirmation
cp -ri documents /home/kali/backup/
```

### Symbolic Links (Copying as Link)
To copy a symbolic link without following the link, use the `-d` option:
```bash
cp -d source_link destination_link
# Example: Copying a symbolic link 'shortcut' to '/home/kali/new_folder/'
cp -d shortcut /home/kali/new_folder/
```

### Examples with Outputs
1. **Copying a single file:**
   ```bash
   cp example.txt /home/kali/new_folder/
   ```

2. **Copying multiple files:**
   ```bash
   cp file1.txt file2.txt /home/kali/new_folder/
   ```

3. **Copying a directory recursively:**
   ```bash
   cp -r documents /home/kali/backup/
   ```

4. **Overwriting an existing file without prompting:**
   ```bash
   cp -f example.txt /home/kali/new_folder/
   ```

5. **Preserving metadata while copying a directory:**
   ```bash
   cp -rp documents /home/kali/backup/
   ```

6. **Copying a symbolic link as a link (not following it):**
   ```bash
   cp -d shortcut /home/kali/new_folder/
   ```

These examples should give you a comprehensive understanding of how to use the `cp` command with various options in Kali Linux.

