 `wget` is a powerful command-line utility for downloading files from the web using HTTP, HTTPS, and FTP. Here are some of its features along with examples that you can use in Kali Linux's terminal:

### Basic Usage
1. **Download a single file:**
   ```sh
   wget http://example.com/file.txt
   ```

2. **Download multiple files from the same server using wildcards:**
   ```sh
   wget http://example.com/dir/*.txt
   ```

3. **Recursive download of a whole website:**
   ```sh
   wget -r http://example.com/path
   ```

4. **Download specific file types from a directory:**
   ```sh
   wget -A "*.jpg, *.png" -r http://example.com/images
   ```

5. **Specify the output directory for downloaded files:**
   ```sh
   wget -P /path/to/save -r http://example.com/files
   ```

6. **Download a file with a specific user-agent to avoid being blocked:**
   ```sh
   wget --user-agent="Mozilla/5.0" http://example.com/file.txt
   ```

7. **Download a file and retry up to 10 times if the connection is lost:**
   ```sh
   wget -t 10 http://example.com/file.txt
   ```

### Authentication
8. **Use HTTP authentication to download a protected resource:**
   ```sh
   wget --user=username --password=password http://example.com/protected-file.txt
   ```

### Proxy Usage
9. **Download files through a proxy server:**
   ```sh
   wget -e use_proxy=yes -e http_proxy=http://proxy.server:port -r http://example.com
   ```

10. **Use HTTPS with a specific user certificate:**
    ```sh
    wget --user=username --password=certificate https://example.com/file.txt
    ```

### Miscellaneous Features
11. **Resume an interrupted download:**
    ```sh
    wget -c http://example.com/file.part
    ```

12. **Download a file and show the progress bar:**
    ```sh
    wget --progress=dot:mega http://example.com/large-file.zip
    ```

### Examples with Output Directory
13. **Download multiple files to a specific directory:**
    ```sh
    wget -P /path/to/save -r -l 2 -A "*.jpg, *.png" http://example.com/images
    ```

### Downloading from FTP
14. **Download a file from an FTP server:**
    ```sh
    wget --ftp-user=username --ftp-password=password ftp://example.com/file.txt
    ```

These examples cover some of the basic and advanced features of `wget` that you can use in Kali Linux's terminal. For more detailed usage, refer to the official `wget` documentation or run `wget --help` for a list of available options.

