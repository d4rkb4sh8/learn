 `mitmproxy` is a powerful, interactive, SSL/TLS-capable intercepting proxy with a Python API. It's often used for debugging and testing purposes, especially when you need to intercept or modify network traffic between a client (e.g., a web browser) and a server. Below are some key features of `mitmproxy` along with examples that you can run in the Kali Linux terminal.

### 1. Basic Usage
You can start `mitmproxy` without any options to see its interactive command-line interface:
```bash
mitmproxy
```
This will open a console where you can interactively control mitmproxy, such as by adding hooks for intercepting requests and responses.

### 2. Intercepting Traffic
To start intercepting traffic, you'll typically use the `-p` option to specify a port:
```bash
mitmproxy -p 8080
```
This will run mitmproxy on port 8080 and capture traffic between your system and any other systems bound to that port.

### 3. Saving Traffic to a File
You can save the intercepted traffic to a file using the `-w` option followed by a filename:
```bash
mitmproxy -w output.txt
```
This will write the intercepted HTTP/HTTPS traffic into `output.txt`. For HTTPS, mitmproxy captures the raw TLS data and you'll need to decrypt it later (more on this below).

### 4. Decrypting HTTPS Traffic
To capture HTTPS traffic, you typically need to use a MITM plugin like `mitmdump` with the `--ssl-insecure` option to bypass SSL certificate validation:
```bash
mitmproxy --ssl-insecure -w output_https.txt
```
This will start mitmproxy in insecure mode and save the HTTPS traffic into `output_https.txt`. Note that this is less secure as it allows man-in-the-middle attacks to occur.

### 5. Custom Scripts with Python
You can write custom Python scripts to extend mitmproxy's functionality. For example, you might want to add hooks to modify requests or responses:
```bash
mitmproxy -s my_script.py
```
In `my_script.py`, you could define functions that hook into the request and response cycle:
```python
from mitmproxy import http

def request(flow: http.HTTPFlow):
    flow.request.headers["X-Modified"] = "True"

def response(flow: http.HTTPFlow):
    flow.response.text = flow.response.text.replace("example", "modified")
```
This script modifies all requests to add a custom header and changes occurrences of the word "example" in responses to "modified".

### 6. Using mitmweb for a Web Interface
For a more user-friendly interface, you can use `mitmweb`:
```bash
mitmweb
```
This will start an interactive web interface where you can see all traffic and control mitmproxy through a graphical browser window.

### 7. Interactive Mode
Mitmproxy provides an interactive mode where you can type commands to manipulate the proxy:
- `help`: Show help for available commands.
- `k` (or `Ctrl+K`): Kill the current connection.
- `r` (or `Ctrl+R`): Replay the last request.
- `p` (or `Ctrl+P`): Toggle PAUSE state.
- `q`: Quit mitmproxy.

These are just some of the basic features and commands available with `mitmproxy`. The tool is highly customizable, offering extensive capabilities for developers and security professionals to debug, monitor, and modify network traffic in real-time.

