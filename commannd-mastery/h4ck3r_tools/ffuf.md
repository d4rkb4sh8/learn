 `ffuf` is a powerful and flexible tool designed for web application reconnaissance, specifically targeted at discovering hidden content and directories. Below are some key features of `ffuf`, accompanied by practical examples to illustrate their usage within Kali Linux's terminal environment.

### 1. Basic Usage
```sh
ffuf -w <wordlist> -u <target_url/FUZZ>
```
**Example**: Discover directories on a target site using the default wordlist:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ
```
In this command, `common.txt` is a typical web directory and file wordlist that comes with Kali Linux, while `http://example.com/FUZZ` specifies the target URL where FUZZ can be substituted by words from the wordlist.

### 2. Custom Headers
```sh
ffuf -w <wordlist> -u <target_url> -H "<custom_header>:<value>"
```
**Example**: Add a custom header to your request:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -H "User-Agent: Mozilla/5.0"
```
This command adds a `User-Agent` header with the value of `Mozilla/5.0` to all requests made by `ffuf`.

### 3. POST Requests
```sh
ffuf -w <wordlist> -u <target_url> -X POST -d "<post_data>"
```
**Example**: Perform a POST request with some form data:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -X POST -d "username=admin&password=admin"
```
This command sends a POST request with the specified form data to each target URL found by `ffuf`.

### 4. Using Wildcards and Regular Expressions
```sh
ffuf -w <wordlist> -u http://example.com/FUZZ -mc all -mr "pattern"
```
**Example**: Search for a specific pattern using a wildcard:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -mc 200,301,403 -mr "admin"
```
This command looks for responses with status codes 200, 301, and 403 that contain the word "admin".

### 5. Custom Timeout
```sh
ffuf -w <wordlist> -u <target_url> -t <timeout>
```
**Example**: Set a custom timeout for each request:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -t 5
```
This command sets the timeout to 5 seconds for each request made by `ffuf`.

### 6. Output Formatting and Saving Results
```sh
ffuf -w <wordlist> -u <target_url> -o output.txt
```
**Example**: Save the results of the scan into a file:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -o found_directories.txt
```
This command saves all discovered directories to `found_directories.txt`.

### 7. Verbose Mode
```sh
ffuf -w <wordlist> -u <target_url> -v
```
**Example**: Enable verbose output for detailed debugging:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -v
```
Verbose mode provides more detailed information about the scanning process and results.

### 8. Recursive Mode (Experimental)
```sh
ffuf -w <wordlist> -u <target_url>/FUZZ -fr
```
**Example**: Use recursive mode to explore deeper into the site structure:
```sh
ffuf -w /usr/share/seclists/Discovery/Web-Content/common.txt -u http://example.com/FUZZ -fr
```
This command starts a recursive scan from the base URL provided, attempting to discover subdirectories and files.

### Conclusion
`ffuf` is a versatile tool that can be used for various web application reconnaissance tasks. By understanding and utilizing its features effectively, you can enhance your penetration testing or security auditing efforts. Always ensure you have permission before scanning target systems, and consider using more advanced techniques in compliance with legal guidelines.

