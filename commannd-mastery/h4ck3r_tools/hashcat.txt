 Sure, `hashcat` is a powerful and versatile password cracking tool that can be used to crack various types of hashes. Below are some common features and their examples when using `hashcat` from a Kali Linux terminal.

### Basic Usage
1. **Cracking a Hash:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file>
   ```
   Example: Crack a SHA-256 hash using a dictionary file `passwords.txt`.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt
   ```

### Common Options
2. **Using Multiple GPUs:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file> --opencl-device-types OCL
   ```
   Example: Use all available OpenCL devices to crack the hash.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt --opencl-device-types OCL
   ```

3. **Using Multiple CPU Cores:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file> -a 0 --threads <number_of_threads>
   ```
   Example: Use all available CPU cores to crack the hash.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt -a 0 --threads 16
   ```

4. **Using Hybrid Mode:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file> --hybrid-mode
   ```
   Example: Use hybrid mode to combine GPU and CPU cracking.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt --hybrid-mode
   ```

### Advanced Usage
5. **Custom Mask Attack:**
   ```sh
   hashcat -m <hash_type> <hash_file> -a 3 <mask>
   ```
   Example: Use a custom mask to brute-force the password.
   ```sh
   hashcat -m 1400 hashes.txt -a 3 ?l?l?l?l
   ```

6. **Using Rule Files:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file> --rule-file <rule_file>
   ```
   Example: Use rules to refine the dictionary attack.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt --rule-file rules/best64.rule
   ```

7. **Using Potfile:**
   ```sh
   hashcat -m <hash_type> <hash_file> <dictionary_file> --potfile-path <potfile_path>
   ```
   Example: Use a potfile to store cracked passwords.
   ```sh
   hashcat -m 1400 hashes.txt passwords.txt --potfile-path rockyou.pot
   ```

8. **Using John the Ripper Format:**
   ```sh
   hashcat -m <hash_type> <hash_file> --format=john <john_format>
   ```
   Example: Convert a John the Ripper format to hashcat format and crack it.
   ```sh
   hashcat -m 1700 hashes.txt --format=john john_hashes.txt
   ```

### Examples with Specific Hash Types
9. **Cracking LM Hashes:**
   ```sh
   hashcat -m 3000 <hash_file> <dictionary_file>
   ```
   Example: Crack LM hashes from `hashes.txt` using dictionary `passwords.txt`.
   ```sh
   hashcat -m 3000 lm_hashes.txt passwords.txt
   ```

10. **Cracking NTLM Hashes:**
    ```sh
    hashcat -m 5600 <hash_file> <dictionary_file>
    ```
    Example: Crack NTLM hashes from `hashes.txt` using dictionary `passwords.txt`.
    ```sh
    hashcat -m 5600 ntlm_hashes.txt passwords.txt
    ```

11. **Cracking SHA-256 Hashes:**
    ```sh
    hashcat -m 1400 <hash_file> <dictionary_file>
    ```
    Example: Crack SHA-256 hashes from `hashes.txt` using dictionary `passwords.txt`.
    ```sh
    hashcat -m 1400 sha256_hashes.txt passwords.txt
    ```

These examples should give you a good starting point for using `hashcat` on Kali Linux to crack various types of hashes.

