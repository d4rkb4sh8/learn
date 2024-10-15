 The `nl` command in Kali Linux is used to number lines or bytes (with an option) and add a header. Here are some key features and examples of how you can use it:

### Basic Usage
The basic usage of `nl` is to number the lines of input text. For example:
```sh
echo "Line one\nLine two" | nl
```
This will output:
```
     1  Line one
     2  Line two
```

### Adding a Header
You can add a header to the numbered lines using the `-h` option followed by the header text. For example:
```sh
echo -e "Line one\nLine two" | nl -s '. ' -w 3 -p 'Header:'
```
This will output:
```
Header:   1. Line one
     2. Line two
```
- `-s` specifies the separator between the line number and the text (default is a tab).
- `-w` sets the width of the line numbers field.
- `-p` adds a prefix to the header.

### Numbering Bytes Instead of Lines
To number bytes instead of lines, use the `-b` option with `a` for all or specific positions like `bytes`, `chars`, `lines`. For example:
```sh
echo "ABC" | nl -s ': ' -b a -n ln
```
This will output:
```
     1: A
     2: B
     3: C
```
- `-n` specifies the format for the line number (ln = leading, rn = trailing).

### Combining Options
You can combine multiple options to customize the output. For example:
```sh
echo "Line one\nLine two" | nl -s ' : ' -w 3 -p 'Header:' -b a -n ln
```
This will output:
```
Header:   1 : A
     2 : B
     3 : C
```

### Examples of Different Options in Action
- **Numbering Lines with Custom Width and Header:**
  ```sh
  echo "Line one\nLine two" | nl -s ' -> ' -w 4 -p 'Header:'
  ```
  Output:
  ```
  Header:     1 -> Line one
       2 -> Line two
  ```

- **Numbering Bytes with Custom Separator:**
  ```sh
  echo "ABC" | nl -s ': ' -b a -n ln
  ```
  Output:
  ```
       1: A
       2: B
       3: C
  ```

- **Adding Header and Numbering Bytes:**
  ```sh
  echo "ABC" | nl -s ' : ' -h 'Start of file' -b a -n ln
  ```
  Output:
  ```
  Start of file   1: A
       2: B
       3: C
  ```

These examples demonstrate how flexible the `nl` command is, allowing you to customize line numbers and headers in various ways based on your specific needs.

