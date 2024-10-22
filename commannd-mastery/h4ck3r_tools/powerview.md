 PowerView is a PowerShell-based tool that can be used to enumerate and interact with various objects in Active Directory (AD). It leverages Windows APIs to perform these tasks. Below are some common features of PowerView, along with examples on how to use them in Kali Linux terminal. Note that you might need to install PowerView if it's not already available in your system.

### Prerequisites
1. **Kali Linux** installed and up-to-date.
2. **PowerShell** installed (since PowerView is a PowerShell script).
3. **PowerView** script downloaded or cloned from [here](https://github.com/PowerShellMafia/PowerSploit/blob/master/Recon/PowerView.ps1) and saved to `/usr/share/powersploit/` on Kali Linux.
4. **Invoke-PowerView.py**: A Python script that wraps PowerView commands for easier use in a Kali terminal. This script can be found [here](https://github.com/djhohnstein/PowerView).

### Installation and Setup
1. Download the PowerView script:
   ```bash
   git clone https://github.com/PowerShellMafia/PowerSploit.git /usr/share/powersploit/Recon/
   ```
2. Navigate to the directory where you saved PowerView:
   ```bash
   cd /usr/share/powersploit/Recon/
   ```
3. Set up the Python wrapper if not already done:
   ```bash
   git clone https://github.com/djhohnstein/PowerView.git /opt/powerview/
   ```

### Using PowerView in Kali Linux Terminal
Now you can use PowerView commands from your Kali terminal. Here are some common commands with examples:

#### 1. Enumerate Domain Users
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetUser"
```
This command will list all domain users.

#### 2. Enumerate Domain Computers
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetComputer"
```
This will enumerate all computers in the domain.

#### 3. Enumerate Domain Groups
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetGroup"
```
This command lists all domain groups.

#### 4. Enumerate Domain Controllers
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetDomainController"
```
This will list all domain controllers in the domain.

#### 5. Enumerate Kerberos Tickets
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetUser -SPN"
```
This command lists users with SPN (Service Principal Name), which can be useful for identifying services that a user has access to.

#### 6. Enumerate Domain Trusts
```bash
python3 /opt/powerview/Invoke-PowerView.py -c "Get-NetDomain"
```
This command lists information about the domain, including trusts.

### Notes
- Ensure you have proper authorization to perform these actions in the target Active Directory environment.
- Running these commands might trigger security alerts or audits in your AD infrastructure.

By following these steps and using the provided commands, you can effectively use PowerView within Kali Linux for various Active Directory enumeration tasks.

