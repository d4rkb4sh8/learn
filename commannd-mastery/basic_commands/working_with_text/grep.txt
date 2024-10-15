 The `grep` command is a powerful tool for searching plain-text data sets for lines that match regex patterns. In Kali Linux, it's commonly used alongside other commands like `ls`, `cat`, and `find` to filter output based on specific text patterns. Here are some common features of the `grep` command with examples:

### Basic Usage

1. **Search a Single File:**
   ```bash
   grep "pattern" filename
   ```
   Example: Searching for lines containing "apple" in a file named `fruits.txt`.
   ```bash
   grep "apple" fruits.txt
   ```

2. **Case-Insensitive Search:**
   ```bash
   grep -i "pattern" filename
   ```
   Example: Searching case-insensitively for lines containing "Banana" in `fruits.txt`.
   ```bash
   grep -i "banana" fruits.txt
   ```

3. **Invert Match:**
   ```bash
   grep -v "pattern" filename
   ```
   Example: Displaying all lines that do not contain "apple" in `fruits.txt`.
   ```bash
   grep -v "apple" fruits.txt
   ```

4. **Count Matching Lines:**
   ```bash
   grep -c "pattern" filename
   ```
   Example: Counting the number of lines containing "banana" in `fruits.txt`.
   ```bash
   grep -c "banana" fruits.txt
   ```

5. **Show Filenames with Matches:**
   ```bash
   grep -l "pattern" filename1 filename2 ...
   ```
   Example: Listing filenames containing "apple".
   ```bash
   grep -l "apple" *.txt
   ```

### Combining with Other Commands

6. **Search in Multiple Files:**
   ```bash
   grep "pattern" file1 file2 file3
   ```
   Example: Searching for "banana" across multiple files (`file1`, `file2`, and `file3`).
   ```bash
   grep "banana" file1 file2 file3
   ```

7. **Recursive Search in Directory:**
   ```bash
   grep "pattern" /path/to/directory/*
   ```
   Example: Searching recursively in all files within `/home/user/documents`.
   ```bash
   grep "banana" /home/user/documents/*
   ```

8. **Using `find` with `grep`:**
   ```bash
   find /path/to/search -type f | xargs grep "pattern"
   ```
   Example: Searching for "apple" in all files within `/home/user/files`.
   ```bash
   find /home/user/files -type f | xargs grep "apple"
   ```

### Regular Expressions

9. **Basic Regex Patterns:**
   ```bash
   grep "[abc]+" filename
   ```
   Example: Searching for lines with sequences of one or more 'a', 'b', or 'c'.
   ```bash
   grep "[0-9]{3}" numbers.txt
   ```

10. **Word Boundaries:**
    ```bash
    grep "\bapple\b" fruits.txt
    ```
    Example: Searching for the word "apple" without partial matches.

### Advanced Examples

11. **Using `-E` with Extended Regex:**
    ```bash
    grep -E "[0-9]+-[0-9]+" phone_numbers.txt
    ```
    Example: Matching phone numbers like 123-4567.

12. **Combining Options:**
    ```bash
    grep -r --include="*.log" "error" /var/logs/
    ```
    Example: Searching recursively for the word "error" in all `.log` files within `/var/logs`.

### Practical Examples

13. **Finding IP Addresses:**
    ```bash
    grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" access.log
    ```
    Example: Extracting all IP addresses from `access.log`.

14. **Finding User Accounts:**
    ```bash
    grep -E "^user[0-9]+:" /etc/passwd
    ```
    Example: Displaying lines that represent user accounts in `/etc/passwd`.

### Conclusion

The `grep` command is a versatile tool in Kali Linux for searching through files and data streams. By mastering the various options and combinations, you can efficiently perform complex searches to meet your information needs.

