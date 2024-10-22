 The `chmod` command in Kali Linux is used to change the file permissions of a file or directory. It stands for "change mode" and allows you to set specific permissions for the user, group, and others (often abbreviated as UGO). Here are some key features and examples of using the `chmod` command:

### Key Features of `chmod`:
1. **Permissions**: You can set read (`r`), write (`w`), and execute (`x`) permissions for each category (user, group, others).
2. **Binary Mode**: You can use binary mode to quickly set multiple permissions at once. For example, setting all permissions is represented as `777` in octal notation or `0777` in symbolic notation.
3. **Symbolic Notation**: Using letters (`u`, `g`, `o`) and operators (`+`, `-`, `=`), you can modify permissions incrementally.
4. **Recursive Permissions**: You can apply the same permission changes to all files and directories within a directory using recursive mode.

### Examples of Using `chmod`:

#### 1. Setting Specific Permissions for User, Group, Others:
```sh
chmod u=rwx,g=rx,o=r filename
```
This sets read (`r`), write (`w`), and execute (`x`) permissions for the user, read and execute permissions for the group, and only read permission for others.

#### 2. Adding Permissions (Using `+`):
```sh
chmod u+w file.txt
```
This adds write permission to the user for `file.txt`.

#### 3. Removing Permissions (Using `-`):
```sh
chmod g-x file.txt
```
This removes execute permission from the group for `file.txt`.

#### 4. Setting Exact Permissions (Using `=`):
```sh
chmod u=rw,g=,o= file.txt
```
This sets read and write permissions for the user, removes all permissions for the group, and only allows read permission for others.

#### 5. Using Octal Notation:
In octal notation, each digit represents a combination of read (`4`), write (`2`), and execute (`1`) permissions for user, group, and others. For example:
```sh
chmod 755 file.txt
```
- `7` (user): read, write, execute
- `5` (group): read, execute
- `5` (others): read, execute

#### 6. Recursive Permission Change:
```sh
chmod -R u=rwx,g=rx,o=r directory/
```
This applies the permissions recursively to all files and directories within `directory`.

### Example Commands in Kali Linux Terminal:

1. **Set Read, Write, Execute for

