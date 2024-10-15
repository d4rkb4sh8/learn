 The `shutdown` command in Kali Linux is used to power off or restart your computer. It can be executed from the terminal with various options and parameters that control how the system shuts down, including specifying a delay before shutting down, forcing all logged-in users out before shutting down, and even powering off remotely. Here are some of the key features and examples of using the `shutdown` command in Kali Linux:

### Basic Usage

The basic syntax for the `shutdown` command is:
```bash
sudo shutdown [options] TIME [message]
```
Where `TIME` can be a number representing minutes, or one of the special times like "now" to shut down immediately. The `[message]` part allows you to specify an optional message that will be displayed before shutting down.

#### Example 1: Shutdown after 5 minutes
```bash
sudo shutdown now
```
This command will initiate a shutdown in 5 minutes, but since we used "now", it will shut down immediately.

#### Example 2: Shutdown at a specific time
```bash
sudo shutdown 18:30
```
This command schedules a shutdown for 6:30 PM (specified as 18:30 in 24-hour format). Make sure to run this when you won't need the system.

### Options

There are several options that can be used with `shutdown` to control its behavior:

#### -h, --halt
```bash
sudo shutdown -h now
```
This will halt the system immediately (same as using `sudo shutdown now`).

#### -r, --reboot
```bash
sudo shutdown -r 18:30
```
This schedules a reboot at the specified time. If you want to force all logged-in users to log out before shutting down or rebooting, use the following command with either `-h` or `-r`:

#### -P, --poweroff
```bash
sudo shutdown -P now
```
This forces the system to power off immediately (same as using `sudo shutdown now`).

### Forcing Logouts

You can force all logged-in users to log out before shutting down or rebooting by adding the `-k` option:

#### Example 4: Force logout and shut down
```bash
sudo shutdown -h +5 "The system will shut down in 5 minutes. Please save your work."
```
This command will schedule a shutdown in 5 minutes, displaying the message "The system will shut down in 5 minutes. Please save your work." to all logged-in users before shutting down.

### Canceling Shutdown

If you change your mind and want to cancel a scheduled shutdown, you can use the `shutdown` command with the `-c` option:
```bash
sudo shutdown -c
```
This will cancel any previously scheduled shutdown.

### Summary

The `shutdown` command in Kali Linux is quite powerful and flexible, allowing for various options to control how your system shuts down or reboots. Use it carefully, especially when scheduling shutdowns with delays, as unexpected events can cause data loss if not handled properly.

