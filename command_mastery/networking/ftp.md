 The FTP (File Transfer Protocol) command is used to transfer files between a client and server over a network. Kali Linux provides various tools to interact with FTP servers, both for clients and servers. Below are some common FTP commands you can use on Kali Linux along with their explanations and examples.

### Common FTP Commands

1. **open** - Connects to an FTP server.
   ```sh
   ftp [hostname]
   ```
   Example:
   ```sh
   ftp 192.168.1.100
   ```

2. **user** - Sends the username for authentication.
   ```sh
   user [username]
   ```
   Example:
   ```sh
   user anonymous
   ```

3. **pass** - Sends the password for authentication.
   ```sh
   pass [password]
   ```
   Example:
   ```sh
   pass your_email@example.com
   ```

4. **binary** - Switches to binary mode for file transfers.
   ```sh
   binary
   ```

5. **ascii** - Switches to ASCII mode for text files.
   ```sh
   ascii
   ```

6. **cd** - Changes the current directory on the server.
   ```sh
   cd [directory]
   ```
   Example:
   ```sh
   cd public_html
   ```

7. **lcd** - Changes the local directory.
   ```sh
   lcd [local_directory]
   ```
   Example:
   ```sh
   lcd ~/downloads
   ```

8. **dir** - Lists files in the current directory on the server.
   ```sh
   dir
   ```

9. **get** - Retrieves a file from the server to the local machine.
   ```sh
   get [remote_file]
   ```
   Example:
   ```sh
   get index.html
   ```

10. **mget** - Retrieves multiple files from the server to the local machine.
    ```sh
    mget [remote_files]
    ```
    Example:
    ```sh
    mget *.txt
    ```

11. **put** - Sends a file from the local machine to the server.
    ```sh
    put [local_file]
    ```
    Example:
    ```sh
    put ~/downloads/index.html
    ```

12. **mput** - Sends multiple files from the local machine to the server.
    ```sh
    mput [local_files]
    ```
    Example:
    ```sh
    mput *.txt
    ```

13. **delete** - Deletes a file on the server.
    ```sh
    delete [remote_file]
    ```
    Example:
    ```sh
    delete index.html
    ```

14. **rename** - Renames a file on the server.
    ```sh
    rename old_name new_name
    ```
    Example:
    ```sh
    rename old_index.html new_index.html
    ```

15. **quit** - Closes the FTP session.
    ```sh
    quit
    ```
    Example:
    ```sh
    quit
    ```

### Examples of Using FTP Commands

#### Connecting to an FTP Server
```sh
ftp 192.168.1.100
```

#### Logging in as Anonymous
```sh
open 192.168.1.100
user anonymous your_email@example.com
```

#### Changing Directory on the Server
```sh
cd public_html
```

#### Listing Files in the Current Directory
```sh
dir
```

#### Retrieving a File
```sh
get index.html
```

#### Sending a File to the Server
```sh
put ~/downloads/index.html
```

### Notes
- Always ensure you have proper permissions and are authorized to perform these actions on the server or network you are connecting to.
- Use `ftp` for basic FTP operations, but consider using more secure and feature-rich alternatives like `curl`, `wget`, or specialized tools like `netcat` for more advanced scenarios.

These commands should help you get started with FTP in Kali Linux. For more detailed information, refer to the official documentation of your specific FTP client (e.g., `ftp`).

