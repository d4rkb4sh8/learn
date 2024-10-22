 HTTPie is a user-friendly command-line HTTP client for making requests to web servers. It allows you to interact with RESTful APIs using simple and natural syntax. Below are some common features of HTTPie along with examples that you can run on Kali Linux's terminal.

### Basic GET Request
```sh
httpie https://api.github.com/users/kennethreitz
```
This command makes a GET request to the GitHub API to fetch information about the user "kennethreitz".

### Basic POST Request
```sh
http POST https://httpbin.org/post foo=bar baz=qux
```
This command sends a POST request with two parameters (`foo` and `baz`) set to values `bar` and `qux`, respectively, to the given URL.

### GET Request with Headers
```sh
http GET https://api.github.com "Authorization: token YOUR_TOKEN"
```
This command makes a GET request with an Authorization header that includes your GitHub token. Replace `YOUR_TOKEN` with your actual token.

### POST Request with JSON Data
```sh
http --json POST https://httpbin.org/post name="John Doe" age=25
```
This command sends a POST request with JSON data containing the fields `name` and `age`.

### GET Request with Query Parameters
```sh
http GET "https://api.github.com?q=HTTPie"
```
This command makes a GET request to GitHub API with a query parameter `q` set to "HTTPie".

### Inspecting Response
```sh
http https://api.github.com/users/kennethreitz | jq .login
```
This command fetches the user information and pipes it to `jq`, which extracts and displays the `login` field.

### Downloading a File
```sh
http GET https://example.com/file.txt -o downloaded_file.txt
```
This command downloads a file from the specified URL and saves it as `downloaded_file.txt`.

### Sending Raw Data
```sh
echo "Hello, World!" | http POST https://httpbin.org/post
```
This command sends a raw data string (`"Hello, World!"`) via a POST request to the given URL.

### Authentication with HTTPie
HTTPie supports various authentication methods like Basic Auth:
```sh
http --auth username:password https://api.github.com
```
This command makes a GET request using Basic Authentication with your GitHub credentials.

### Verbose Output
```sh
http GET https://api.github.com -v
```
This command makes a GET request and includes verbose output for debugging purposes.

### Custom Headers
```sh
http GET https://api.github.com "X-Custom: value"
```
This command adds a custom header `X-Custom` with the value `value` to the request.

These examples should give you a good starting point on how to use HTTPie in Kali Linux for various types of HTTP requests and operations.

