 The `systemctl` command is a fundamental tool for managing and controlling services on Linux systems, including systemd-based systems like those running Kali Linux. Here are some key features and usage examples of `systemctl`:

### 1. Starting and Stopping Services
You can start or stop a service using the following commands:
```bash
# Start a service
sudo systemctl start servicename.service

# Stop a service
sudo systemctl stop servicename.service
```
Example: To start (or restart) the Apache web server, you would use:
```bash
sudo systemctl start apache2
sudo systemctl restart apache2
```

### 2. Enabling and Disabling Services to Start on Boot
You can enable or disable a service so that it starts automatically at boot time using these commands:
```bash
# Enable a service to start on boot
sudo systemctl enable servicename.service

# Disable a service from starting on boot
sudo systemctl disable servicename.service
```
Example: To ensure that the Apache web server starts at boot, you would use:
```bash
sudo systemctl enable apache2
```
If you later decide to stop it from starting at boot:
```bash
sudo systemctl disable apache2
```

### 3. Checking Service Status
You can check the status of a service using:
```bash
# Check the status of a service
sudo systemctl status servicename.service
```
Example: To see if Apache is running, you would use:
```bash
sudo systemctl status apache2
```

### 4. Reloading Configuration Files
If you make changes to configuration files and want to reload them without restarting the service, you can do so with:
```bash
# Reload a service's configuration
sudo systemctl reload servicename.service
```
Example: To reload Apache’s configuration:
```bash
sudo systemctl reload apache2
```

### 5. Daemon-Reload Command
The `daemon-reload` command can be used to reread the systemd manager configuration, which is useful after making changes to service unit files or when adding new services:
```bash
# Reload systemd manager configuration
sudo systemctl daemon-reload
```
This is particularly useful if you have added custom service units and need them recognized by `systemd`.

### 6. Restarting Services
If a service has already been started but needs to be restarted due to configuration changes or other reasons, you can use:
```bash
# Restart a service
sudo systemctl restart servicename.service
```
Example: To restart Apache:
```bash
sudo systemctl restart apache2
```

### 7. Checking the Status of All Services
You can check the status of all running services using:
```bash
# Check the status of all running services
systemctl list-units --type=service --state=running
```
Example command to see which Apache service units are loaded and running on your system:
```bash
systemctl list-units --type=service --state=running | grep apache2
```

### 8. Getting Help
To get detailed help about the `systemctl` command and its options, you can use:
```bash
# Get help for systemctl
systemctl help
```
Or more specifically for a subcommand like `status`:
```bash
# Get help for specific subcommands
systemctl status --help
```
These commands provide detailed information on how to use each feature of the `systemctl` command effectively.

