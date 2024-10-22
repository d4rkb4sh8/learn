 The `hostnamectl` command is a part of the systemd utilities and provides an interface for querying and controlling the system hostname and related parameters. Here are some features along with examples that you can use in Kali Linux terminal:

### 1. View Current Hostname
You can check the current hostname, static hostname, and transient hostname using `hostnamectl`.

```sh
hostnamectl
```
Example output might look like this:
```
   Static hostname: kali
   Pretty hostname: kali
   Icon name: computer-laptop
   Chassis: laptop
   Deployment: gnome
   Operating System: Kali GNU/Linux
   Kernel: Linux 5.10.0-kali8-amd64
   Architecture: x86_64
```

### 2. Set Static Hostname
You can set a static hostname for your system using the `static` option.

```sh
sudo hostnamectl set-hostname newhostname
```
After setting, you can verify it with:
```sh
hostnamectl
```

### 3. Set Pretty Hostname
The pretty hostname is more user-friendly and can be set similarly.

```sh
sudo hostnamectl set-pretty-hostname "New Pretty Kali"
```
Verify the change with:
```sh
hostnamectl
```

### 4. Set Icon Name
You can also set an icon name for your system, which is used in desktop environments to represent the system.

```sh
sudo hostnamectl set-icon-name "computer-workstation"
```
Check the change with:
```sh
hostnamectl
```

### 5. Set Chassis Type
You can specify the chassis type of your system, which might affect how it is represented in some desktop environments.

```sh
sudo hostnamectl set-chassis laptop
```
Verify the change with:
```sh
hostnamectl
```

### 6. Set Deployment
This option allows you to specify the deployment method or environment of your system.

```sh
sudo hostnamectl set-deployment gnome
```
Check the change with:
```sh
hostnamectl
```

### 7. Set User Friendly Name
The user-friendly name (pretty hostname) can be set directly using this command.

```sh
sudo hostnamectl set-user-friendly-name "User Friendly Kali"
```
Verify the change with:
```sh
hostnamectl
```

### Examples
Here are some practical examples to demonstrate these commands in action:

#### Example 1: Set a new static hostname
```sh
sudo hostnamectl set-hostname mykali
```
After setting, check the hostname:
```sh
hostnamectl
```

#### Example 2: Change the pretty hostname
```sh
sudo hostnamectl set-pretty-hostname "My Pretty Kali"
```
Verify the change with:
```sh
hostnamectl
```

#### Example 3: Set an icon name
```sh
sudo hostnamectl set-icon-name "computer-laptop"
```
Check the change with:
```sh
hostnamectl
```

By using these commands, you can manage and configure various system properties from the command line in Kali Linux.

