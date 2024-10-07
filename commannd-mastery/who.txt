 The `who` command in Linux is used to display information about users who are currently logged in. It provides details such as user name, terminal type, login date and time, and the idle time for each session. Here's a breakdown of its features along with some examples:

### Basic Usage
The basic syntax for using `who` is:
```bash
who
```
This command will display information similar to the following:
```
user     tty1         2023-04-01 10:30 (some_timezone)
```
Here, `user` is the username, `tty1` indicates the terminal used, and the date/time with timezone shows when the user logged in.

### Options
The `who` command supports several options to display more detailed or specific information:

- **-H**: Display headers (column names).
  ```bash
  who -H
  ```
  Output will be something like:
  ```
        USER     TTY         FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
  user    tty1      some_hostname   Fri Apr  1 10:30   45.00   0.02s  0.02s /sbin/upstart --user
  ```

- **-b**: Display the system boot time.
  ```bash
  who -b
  ```
  Output will be something like:
  ```
  System Boot : Fri Apr  1 09:23:45 UTC 2023
  ```

- **-l**: Long listing format (similar to `who am i`).
  ```bash
  who -l
  ```
  Output will be similar to the basic usage but more detailed.

### Examples of Usage with Options
1. **Display headers and detailed information:**
   ```bash
   who -H -l
   ```

2. **Display system boot time:**
   ```bash
   who -b
   ```

3. **Check the last logged-in users without additional details:**
   ```bash
   who --login
   ```

### Additional Information from `w` Command
The `w` command provides a more detailed output than `who`, showing additional information such as the current activity of each user:
```bash
w
```
Output will be something like:
```
 10:34:23 up  5:12,  1 user,  load average: 0.00, 0.01, 0.05
 USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
 user     tty1    some_hostname    Fri Apr  1 10:30   45.00   0.02s  0.02s /sbin/upstart --user
```
In this output, you can see the current load average of the system, number of users logged in, and more detailed information about each user's session.

### Conclusion
The `who` command is a useful tool for system administrators to monitor who is using their systems and what they are doing. It provides basic login information by default but can be enhanced with various options to display additional details like terminal types, login times, and idle times. The related `w` command offers even more detailed user activity information.


  who

  Display who is logged in and related data (processes, boot time).
  See also: whoami.
  More information: https://www.gnu.org/software/coreutils/who.

  Display the username, line, and time of all currently logged-in sessions:

    who

  Display all available information:

    who -a

  Display all available information with table headers:

    who -a -H

