 The `xh` command in Kali Linux is a modern, user-friendly alternative to tools like `curl` and `wget`. It provides a more convenient interface for making HTTP requests. Below are some key features of the `xh` command along with examples:

### 1. Making GET Requests
You can use `xh` to make GET requests just like you would with `curl` or `wget`.

```bash
# Basic GET request
xh https://api.github.com

# Request with headers
xh --headers https://api.github.com

# Pretty-print JSON response
xh -p json https://api.github.com
```

### 2. Making POST Requests
You can also use `xh` to make POST requests, including sending JSON data.

```bash
# Basic POST request with JSON body
xh --json '{"name":"John", "age":30}' https://httpbin.org/post

# POST request with headers
xh -H 'Content-Type: application/json' --json '{"name":"John", "age":30}' https://httpbin.org/post
```

### 3. Using Templates for Complex Requests
`xh` supports templates, which can be useful for complex requests where you might need to specify multiple headers or parameters.

```bash
# Template example with custom headers and a JSON body
xh -t https://httpbin.org/post <<EOF
Content-Type: application/json

{"name":"John", "age":30}
EOF
```

### 4. Redirects and Follows
By default, `xh` follows redirects. You can control this behavior with options like `--follow`.

```bash
# Follow redirects
xh --follow https://httpbin.org/redirect/1

# Do not follow redirects
xh --no-follow https://httpbin.org/redirect/1
```

### 5. Customizing HTTP Methods
You can specify the HTTP method using `-m` or `--method`.

```bash
# Using PUT method
xh -m PUT https://httpbin.org/put content='{"key":"value"}'

# Using DELETE method
xh -m DELETE https://httpbin.org/delete
```

### 6. Verbose Output
For debugging, you can use the `--verbose` flag to get detailed output.

```bash
# Verbose output
xh --verbose https://api.github.com
```

### 7. Parsing JSON Responses
You can parse and display JSON responses more conveniently using `-p json`.

```bash
# Pretty-print JSON response from GitHub API
xh -p json https://api.github.com
```

### 8. Custom Headers
You can add custom headers to your requests using the `-H` flag.

```bash
# Adding a custom header
xh -H 'X-Custom-Header: value' https://httpbin.org/get
```

### 9. Using Environment Variables
Some environments might require specific environment variables for certain operations. `xh` supports these via `--env`.

```bash
# Using an environment variable for a custom header
export CUSTOM_HEADER="X-Custom-Header: value"
xh --env CUSTOM_HEADER https://httpbin.org/get
```

### 10. Saving Responses to Files
You can save the response body or headers to files using `--output` and `--header-only`.

```bash
# Save response body to a file
xh https://api.github.com --output github_response.json

# Save only headers to a file
xh --headers https://api.github.com --output headers.txt
```

These examples cover some of the key features and usage scenarios for the `xh` command in Kali Linux. For more detailed documentation, you can refer to the [official xh documentation](https://github.com/sharkdp/xh) or run `xh --help` for a full list of available options and commands.

