 `crackmapexec` is a versatile post-exploitation tool that can be used for network mapping and enumeration. It supports various protocols such as SMB, MSSQL, MySQL, HTTP, FTP, SMTP, and more. Below are some of its features along with examples:

### 1. Basic Usage
```bash
crackmapexec <protocol> <target>
```
**Example:**
```bash
crackmapexec smb 192.168.1.0/24
```
This will scan the subnet `192.168.1.0/24` for SMB shares and services.

### 2. List of Targets
You can specify multiple targets:
```bash
crackmapexec smb target1 target2 target3
```
**Example:**
```bash
crackmapexec smb server1.local domain.local workstation.domain.com
```
This will scan `server1.local`, `domain.local`, and `workstation.domain.com` for SMB shares and services.

### 3. Protocol-Specific Options
Each protocol has its own options. For example, with SMB:
```bash
crackmapexec smb <target> -u <username> -p <password> --shares
```
**Example:**
```bash
crackmapexec smb server1.local -u administrator -p Password123! --shares
```
This will attempt to authenticate using the provided username and password and list SMB shares on `server1.local`.

### 4. Enumerate Users and Groups
You can enumerate users and groups on a domain controller:
```bash
crackmapexec smb <target> -u <username> -p <password> --users
```
**Example:**
```bash
crackmapexec smb server1.local -u administrator -p Password123! --users
```
This will list users on the domain controller `server1.local`.

### 5. Execute Commands
You can execute commands on a target:
```bash
crackmapexec smb <target> -u <username> -p <password> -x "whoami"
```
**Example:**
```bash
crackmapexec smb server1.local -u administrator -p Password123! -x "whoami"
```
This will execute the `whoami` command on `server1.local`.

### 6. RPC Client
You can use the RPC client to interact with various services:
```bash
crackmapexec rpc <target>
```
**Example:**
```bash
crackmapexec rpc server1.local
```
This will connect to the RPC service on `server1.local`.

### 7. Database Enumeration
For MSSQL and MySQL databases:
```bash
crackmapexec mssql <target> -u <username> -p <password> --tables
```
**Example:**
```bash
crackmapexec mssql server1.local -u sa -p Password123! --tables
```
This will enumerate tables in the MSSQL database on `server1.local`.

### 8. HTTP and FTP Enumeration
You can perform enumeration against web servers:
```bash
crackmapexec http <target>
crackmapexec ftp <target>
```
**Example:**
```bash
crackmapexec http server1.local
crackmapexec ftp server1.local
```
This will enumerate HTTP and FTP services on `server1.local`.

### 9. Custom Scripting
You can run custom scripts with the `--script` option:
```bash
crackmapexec smb <target> -u <username> -p <password> --script <script_path>
```
**Example:**
```bash
crackmapexec smb server1.local -u administrator -p Password123! --script /path/to/custom_script.py
```
This will run a custom script on `server1.local`.

### 10. Verbose Output
You can increase the verbosity for detailed output:
```bash
crackmapexec smb <target> -u <username> -p <password> --verbose 3
```
**Example:**
```bash
crackmapexec smb server1.local -u administrator -p Password123! --verbose 3
```
This will provide detailed output for the scan.

These are some of the key features and examples of using `crackmapexec` in Kali Linux. For more advanced usage and options, refer to the official documentation or help menu within the tool itself.

