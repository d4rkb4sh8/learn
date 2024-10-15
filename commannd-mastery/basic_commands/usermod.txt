 The `usermod` command in Kali Linux is used to modify user accounts. It allows you to change various aspects of a user's account, such as the primary group, home directory, or shell. Below are some common features and their examples using the `usermod` command in Kali Linux terminal.

### Basic Usage
The basic syntax for `usermod` is:
```sh
usermod [options] USERNAME
```

### Common Options
- **-a**: Appends the user to the supplementary group instead of becoming the primary group.
- **-d**: Changes the home directory of the user.
- **-e**: Sets the expiration date for the account (format: YYYY-MM-DD).
- **-g**: Changes the primary group of the user.
- **-G**: Adds the user to one or more supplementary groups.
- **-l**: Changes the login name of the user.
- **-s**: Changes the shell for the user.

### Examples

#### Change Primary Group
```sh
usermod -g newgroup username
```
This command changes the primary group of `username` to `newgroup`.

#### Add User to Supplementary Groups
```sh
usermod -G group1,group2 username
```
This command adds `username` to both `group1` and `group2`.

#### Change Home Directory
```sh
usermod -d /new/home/directory username
```
This command changes the home directory of `username` to `/new/home/directory`.

#### Change Shell
```sh
usermod -s /bin/bash username
```
This command changes the shell for `username` to `/bin/bash`.

### Example Scenario
Suppose you want to change the primary group of user `john` to `developers` and add him to the `webdev` group.

```sh
sudo usermod -g developers -G webdev john
```
This command changes `john`'s primary group to `developers` and adds him to `webdev`.

### Notes
- **Root Privileges**: Some of these options, such as changing the home directory or shell, may require root privileges. You can use `sudo` to run the command with elevated permissions.
- **Check Current User**: Always check who you are logged in as before running commands that modify user settings. Use the following command to verify your current user:
  ```sh
  whoami
  ```

By using these options and examples, you can effectively manage user accounts in Kali Linux using the `usermod` command.

