 The `column` command in Kali Linux is used to format and display text data as columns. It can be particularly useful for organizing and displaying tabular data in a readable format. Below are some key features and examples of how you can use the `column` command:

### Basic Usage
The basic syntax of the `column` command is:
```sh
column [options] [file]
```
Where options can be:
- `-c <number>`: Set the number of columns.
- `-e <separator>`: Use specified character as a column separator.
- `-n <number>`: Set the maximum line length for wrapping text.
- `-t`: Automatically detect the number of columns based on the input width.
- `-s <separator>`: Specify the field separator (default is whitespace).

### Examples
1. **Displaying a Simple List**
```sh
echo "apple banana orange" | column -x
```
This will output:
```
apple   banana  orange
```
2. **Specifying Columns and Separators**
```sh
echo "1,2,3,4" | column -s ',' -t
```
This will output:
```
1       2       3       4
```
3. **Auto-detecting Columns**
```sh
seq 1 10 > numbers.txt
column -t numbers.txt
```
Assuming `numbers.txt` contains:
```
1
2
3
4
5
6
7
8
9
10
```
Output will be:
```
1       2       3       4       5       6       7       8       9       10
```
4. **Wrapping Text**
```sh
echo "This is a sample text that should wrap around the column width" | column -x
```
This will output wrapped text:
```
This    is      a       sample  text    that    should  wrap    around  the     column  width
```
5. **Using Custom Separator**
```sh
echo "1,2,3,4" | column -s ',' -t
```
Output will be:
```
1       2       3       4
```
6. **Specifying Maximum Line Length**
```sh
seq 1 50 > long_numbers.txt
column -t -n 10 long_numbers.txt
```
This will output with a maximum line length of 10 characters:
```
1       2       3       4       5       6       7       8       9       10
11      12      13      14      15      16      17      18      19      20
21      22      23      24      25      26      27      28      29      30
31      32      33      34      35      36      37      38      39      40
41      42      43      44      45      46      47      48      49      50
```

These examples demonstrate the versatility of the `column` command in Kali Linux for formatting and displaying tabular data.

