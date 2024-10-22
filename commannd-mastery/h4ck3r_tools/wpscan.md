 `wpscan` is a powerful tool for scanning WordPress websites for vulnerabilities and can be very useful during a penetration test or security audit. Below are some of the key features of `wpscan` along with examples on how to use them in Kali Linux terminal. 

### Basic Usage
1. **Scanning a Single Target:**
   ```sh
   wpscan --url http://example.com
   ```
   This command will scan the WordPress site at `http://example.com`.

2. **Scanning Multiple Targets:**
   ```sh
   wpscan --url http://example1.com,http://example2.com
   ```
   You can specify multiple targets separated by commas.

3. **Using a WordList for Enumeration:**
   ```sh
   wpscan --url http://example.com --wordlist /path/to/wordlist.txt
   ```
   This will use the custom word list to enumerate users and plugins.

4. **Enumerate Users:**
   ```sh
   wpscan --url http://example.com --enumerate u
   ```
   This will enumerate and display available users on the WordPress site.

5. **Enumerate Plugins:**
   ```sh
   wpscan --url http://example.com --enumerate p
   ```
   This will enumerate and display installed plugins on the WordPress site.

6. **Scan for Specific Vulnerabilities:**
   ```sh
   wpscan --url http://example.com --plugins-version-detection aggressive
   ```
   This command will scan for vulnerabilities in all installed plugins using an aggressive version detection strategy.

7. **Using a Config File:**
   ```sh
   wpscan --config /path/to/wpscan_config.txt
   ```
   You can specify a config file to set default options and wordlists.

### Advanced Usage
1. **Scanning with Custom Headers:**
   ```sh
   wpscan --url http://example.com --header 'Custom: Header'
   ```
   This will send custom headers during the scan.

2. **Setting a Timeout:**
   ```sh
   wpscan --url http://example.com --timeout 30
   ```
   You can set a timeout value for network operations.

3. **Using Proxy:**
   ```sh
   wpscan --url http://example.com --proxy http://127.0.0.1:8080
   ```
   This will use the specified HTTP proxy for the scan.

4. **Scanning with Timing Options:**
   ```sh
   wpscan --url http://example.com --delay 5
   ```
   You can set a delay between requests to avoid detection.

5. **Output Formats:**
   ```sh
   wpscan --url http://example.com --output csv > output.csv
   ```
   You can save the scan results in various formats like JSON, XML, or CSV.

6. **Scanning with User Agent Customization:**
   ```sh
   wpscan --url http://example.com --user-agent 'CustomUserAgent'
   ```
   This will use a custom user agent string during the scan.

7. **Running in Batch Mode:**
   ```sh
   wpscan --url http://example.com --batch
   ```
   This will run `wpscan` in batch mode, which is useful for automated scans.

### Examples
1. **Scan a WordPress site and enumerate users and plugins:**
   ```sh
   wpscan --url http://example.com --enumerate u,p
   ```

2. **Scan multiple targets with different wordlists:**
   ```sh
   wpscan --url http://example1.com,http://example2.com --wordlist /path/to/multiple_wordlists.txt
   ```

3. **Scan a WordPress site and detect vulnerabilities in plugins aggressively:**
   ```sh
   wpscan --url http://example.com --plugins-version-detection aggressive
   ```

### Conclusion
`wpscan` is a versatile tool that can be used to scan WordPress sites for various types of vulnerabilities. By using the commands and options provided above, you can customize your scans based on your specific needs. Always ensure you have permission before scanning any target.

