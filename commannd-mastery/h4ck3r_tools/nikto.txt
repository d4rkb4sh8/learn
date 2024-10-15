 Nikto is a popular open-source web server scanner that performs comprehensive tests against a web server to discover security vulnerabilities. It can check for outdated versions of software, misconfigured web servers, and numerous other issues. Below are some key features of the Nikto command along with examples on how to use them in Kali Linux:

### Key Features of Nikto

1. **Default Database Checks**: Nikto includes a database of known vulnerabilities related to specific server types and versions. It uses this information to identify potential security issues.
2. **User-Agent String Detection**: By default, Nikto sends an identification string in its HTTP requests that helps determine the version and type of web server being tested.
3. **Directory Bruteforce**: Nikto can attempt to discover hidden directories and files by using a dictionary of common names.
4. **Vulnerability Scanning**: It scans for known vulnerabilities, such as SQL injection, cross-site scripting (XSS), etc.
5. **SSL/TLS Checks**: Nikto can check if SSL or TLS is configured correctly and identify weak ciphers used.
6. **Options for Plugins**: Users can write custom plugins to extend the functionality of Nikto according to specific needs.
7. **Output Formats**: It supports multiple output formats including HTML, XML, JSON, and plain text.

### Examples of Using Nikto in Kali Linux Terminal

#### Basic Usage
To run a basic scan on a target website:
```bash
nikto -h http://example.com
```
Replace `http://example.com` with the actual URL you want to scan.

#### Scanning HTTPS (if SSL/TLS is misconfigured)
```bash
nikto -h https://example.com
```
Nikto will report if it detects any issues with SSL/TLS configuration, such as weak ciphers or lack of server-side request forgery protection.

#### Customizing Output Format
To output the results in HTML format:
```bash
nikto -h http://example.com -Format html > scan_report.html
```
This command will generate an HTML report named `scan_report.html` containing detailed information about the target site's vulnerabilities.

#### Bruteforce Directories
To perform a directory bruteforce:
```bash
nikto -h http://example.com -BruteDir /path/to/wordlist.txt
```
Replace `/path/to/wordlist.txt` with the path to your custom wordlist or use one of the default ones provided by Nikto.

#### Scanning Multiple Targets
To scan multiple targets, you can specify them in a file and pass it to Nikto:
```bash
cat target_urls.txt
http://example1.com
http://example2.com
nikto -h @target_urls.txt
```
In `target_urls.txt`, each URL should be on its own line.

#### Using Plugins
To run a specific plugin:
```bash
nikto -h http://example.com -Plugins file_upload
```
This command will activate the "file upload" plugin to check for potential file upload vulnerabilities.

### Conclusion
Nikto is a powerful tool in the Kali Linux arsenal, providing comprehensive web application scanning capabilities. By understanding and utilizing its features effectively, you can enhance your security posture by identifying and mitigating potential risks associated with web servers.

