 Sure, `sed` (Stream Editor) is a powerful text processing command-line tool in Unix/Linux. It can be used to perform basic text transformations on an input stream (a file or input from a pipeline). Here are some common features and examples using the `sed` command in Kali Linux terminal:

### Basic Usage
```sh
sed 's/pattern/replacement/' filename
```
**Example:** Replace "apple" with "banana" in a file named `example.txt`.
```sh
sed 's/apple/banana/' example.txt
```

### Printing Lines
```sh
sed -n '/pattern/p' filename
```
**Example:** Print lines that contain the word "hello".
```sh
sed -n '/hello/p' example.txt
```

### Substitution Flags
- `s` for substitution.
- `g` flag to replace all occurrences in a line (global replacement).
- `1,3s` to specify lines.

**Example:** Replace "apple" with "banana" globally in the file.
```sh
sed 's/apple/banana/g' example.txt
```

### Deleting Lines
```sh
sed '/pattern/d' filename
```
**Example:** Delete lines that contain the word "goodbye".
```sh
sed '/goodbye/d' example.txt
```

### Appending and Inserting Lines
- `a` for append.
- `i` for insert.

**Example:** Append a line to the end of the file.
```sh
sed -i '$a New line' example.txt
```

### Changing Case
```sh
sed 's/text/TEXT/' filename
```
**Example:** Change all instances of "hello" to "HELLO".
```sh
sed 's/hello/HELLO/' example.txt
```

### Numeric Ranges
```sh
sed '2,5s/pattern/replacement/' filename
```
**Example:** Replace "apple" with "banana" in lines 2 to 5.
```sh
sed '2,5s/apple/banana/' example.txt
```

### Using Address Ranges
Address ranges can be specified using line numbers or patterns.

**Example:** Replace "apple" with "banana" only in the third line.
```sh
sed '3s/apple/banana/' example.txt
```

### Multiple Commands
Multiple commands can be chained together using `;`.

**Example:** Delete lines containing "hello" and replace "apple" with "banana".
```sh
sed '/hello/d; s/apple/banana/' example.txt
```

### Using Variables
You can use variables for patterns and replacements.

**Example:** Replace a variable pattern with another variable replacement.
```sh
pattern='apple'
replacement='banana'
sed "s/$pattern/$replacement/" example.txt
```

### Piping to `sed`
Input can be piped from other commands, such as `grep`.

**Example:** Print lines containing "hello" and replace "apple" with "banana".
```sh
echo "This is an example text." | sed 's/example/test/'
```

### Using Backreferences in Replacements
Backreferences can be used to refer to parts of the pattern matched.

**Example:** Replace a word with its uppercase version.
```sh
sed 's/\b[a-z]\{3\}\b/[&]/' example.txt
```

These examples should give you a good starting point for using `sed` in Kali Linux terminal. You can further explore more complex scenarios and use cases by experimenting with different patterns, replacements, and flags.

