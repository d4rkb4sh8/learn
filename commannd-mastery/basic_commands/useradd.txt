 The `useradd` command in Kali Linux is used to add a new user to the system. Here are some of its features along with examples:

### Basic Usage
To create a new user, you can use the following syntax:
```sh
sudo useradd [options] username
```

**Example:**
```sh
sudo useradd newuser
```
This will add a new user named `newuser`.

### Setting Home Directory and Shell
You can set the home directory and shell for the new user using options:
- `--home /path/to/home`: Sets the home directory of the new user.
- `--shell /path/to/shell`: Sets the login shell for the new user.

**Example:**
```sh
sudo useradd -m -s /bin/bash newuser
```
This will create a home directory for `newuser` in `/home/newuser` and set the default shell to `/bin/bash`.

### Setting Password
To set a password for the new user, you can use the following command:
```sh
sudo passwd newuser
```
After running this command, you will be prompted to enter and confirm the password for `newuser`.

### Adding User to Groups
You can add the new user to specific groups using the `--groups` option:
```sh
sudo useradd -G group1,group2 newuser
```
This will add `newuser` to both `group1` and `group2`.

### Example Command with All Options
Here is an example command that sets a home directory, shell, and adds the user to specific groups:
```sh
sudo useradd -m -s /bin/bash -G sudo,adm newuser
```
This will create a home directory for `newuser`, set the shell to `/bin/bash`, and add the user to the `sudo` and `adm` groups.

### Checking User Accounts
To list all user accounts on the system, you can use:
```sh
cat /etc/passwd
```
This will display a list of users along with their information.

### Deleting a User
To delete a user, you can use the `-r` option to remove the user's home directory and mail spool:
```sh
sudo useradd -r newuser
```
This will remove the user account and any associated files.

### Summary
- **Basic Addition**: `sudo useradd newuser`
- **Set Home and Shell**: `sudo useradd -m -s /bin/bash newuser`
- **Set Password**: `sudo passwd newuser`
- **Add to Groups**: `sudo useradd -G group1,group2 newuser`
- **All Options Combined**: `sudo useradd -m -s /bin/bash -G sudo,adm newuser`
- **List Users**: `cat /etc/passwd`
- **Delete User**: `sudo useradd -r newuser`

These commands provide a comprehensive way to manage user accounts in Kali Linux using the `useradd` command.

