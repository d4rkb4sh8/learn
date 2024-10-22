 OphCrack is a password cracking tool primarily designed for Windows passwords, but it can also be used to crack various types of hashes. It's useful for penetration testing and forensics. Below are some key features of OphCrack along with examples of how to use them in the Kali Linux terminal.

### Key Features:
1. **Hash Types**: Supports cracking a variety of hash types, including LM (Lan Manager), NTLM, SHA-256, and more.
2. **Wordlists**: Allows you to specify different wordlists for dictionary attacks.
3. **Mask Attack**: Enables mask attack mode where you can use masks to try combinations based on a pattern.
4. **Hybrid Mode**: Combines multiple cracking methods (e.g., dictionary + mask) to increase the chances of success.
5. **Progressive Hashes**: Can handle large numbers of hashes and supports progressive hash types, which are useful for cracking Windows passwords.
6. **Output Formats**: Supports various output formats including plain text, XML, and JSON.
7. **Brute-Force**: Includes brute-force capabilities if other methods fail.
8. **Plugins**: Extensible via plugins to support additional features like rainbow table attacks or GPU acceleration.

### Examples:
Below are some examples of how to use OphCrack in Kali Linux terminal:

#### 1. Cracking a LM Hash
```bash
ophcrack --hash LM_HASH --wordlist /usr/share/wordlists/rockyou.txt
```
Replace `LM_HASH` with your actual LM hash and `/usr/share/wordlists/rockyou.txt` with a suitable wordlist.

#### 2. Cracking an NTLM Hash
```bash
ophcrack --hash NTLM_HASH --wordlist /usr/share/wordlists/rockyou.txt
```
Replace `NTLM_HASH` with your actual NTLM hash and `/usr/share/wordlists/rockyou.txt` with a suitable wordlist.

#### 3. Using Mask Attack
```bash
ophcrack --hash SHA256_HASH --mask "?l?l?l" --incremental
```
Replace `SHA256_HASH` with your actual SHA-256 hash and the mask pattern (e.g., `?l?l?l` for three lowercase letters) according to your needs. The `--incremental` option allows OphCrack to try combinations incrementally based on the mask.

#### 4. Hybrid Mode with Multiple Methods
```bash
ophcrack --hash SHA256_HASH --wordlist /usr/share/wordlists/rockyou.txt --mask "?l?l?l" --incremental
```
This command combines a dictionary attack from the wordlist and a mask attack to crack the hash.

#### 5. Using OphCrack with John the Ripper Output
If you have a file containing hashes, you can pipe it into OphCrack:
```bash
cat hashes.txt | ophcrack --format john
```
This assumes that your hashes are in a format compatible with John the Ripper (`hashes.txt` should contain one hash per line).

#### 6. Exporting Results to XML
```bash
ophcrack --hash SHA256_HASH --wordlist /usr/share/wordlists/rockyou.txt -o xml > results.xml
```
This command will export the cracking results in XML format.

### Conclusion:
OphCrack is a powerful tool for password recovery, especially on Windows systems where LM and NTLM hashes are common. By using Kali Linux and its extensive suite of tools, you can effectively use OphCrack to crack various types of hashes. Remember to always comply with legal and ethical guidelines when performing such operations.

