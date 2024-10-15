 The `nano` command is a popular text editor available on many Unix-like operating systems, including Kali Linux. It provides a user-friendly interface for creating and editing files. Here are some key features of the `nano` command along with examples:

### 1. Basic Usage
To open a file in nano, you can use the following command:
```sh
nano filename.txt
```
This will create or edit the file named `filename.txt`.

### 2. Navigation and Editing
- **Move around the text**: Use arrow keys (up, down, left, right) to navigate through the document.
- **Scroll horizontally**: Press `Ctrl + X` followed by `O` (lowercase o) to scroll horizontally if the text is too wide for the screen.
- **Search and Replace**: 
  1. Use `Ctrl + W` to open the search dialog box. Type the term you want to find and press Enter.
  2. To replace a word, move the cursor to the first occurrence of the word and use `Alt + Shift + R` (press and hold Alt, then press and release Shift and R simultaneously). You will be prompted to enter the replacement text.

### 3. Syntax Highlighting
Nano supports syntax highlighting for various programming languages. To enable it, you can set the syntax mode by typing:
```sh
Ctrl + \ + s (to select the language)
```
For example, to use Python syntax highlighting:
```sh
Ctrl + \ + P
```
This will enable syntax highlighting for Python scripts.

### 4. Line Numbers
To display line numbers in nano, press `Ctrl + O` and then type `.set nu`. To toggle line numbers on and off, you can use the command:
```sh
.set nu!
```

### 5. Word Wrap
- **Enable word wrap**: Press `Alt + W`.
- **Disable word wrap**: Press `Alt + W` again.

### 6. Tab Size
You can set the tab size for indentation by pressing `Ctrl + T` and entering a value (default is 8 spaces).

### 7. Status Bar
The status bar displays information such as the filename, cursor position, and number of lines:
```sh
View > Show Status Bar
```

### 8. Saving and Exiting
- **Save the file**: Press `Ctrl + O` to save the changes.
- **Exit nano**: Press `Ctrl + X` to exit. If you have unsaved changes, you will be prompted to save them before exiting.

### Examples
1. Open a new file named `example.txt`:
   ```sh
   nano example.txt
   ```
2. Edit an existing file named `config.ini`:
   ```sh
   nano config.ini
   ```
3. Enable syntax highlighting for Python:
   ```sh
   Ctrl + \ + P
   ```
4. Display line numbers:
   ```sh
   .set nu
   ```
5. Save and exit after making changes:
   ```sh
   Ctrl + O
   Ctrl + X
   ```

These are some of the key features and commands you can use with the `nano` text editor in Kali Linux. For more advanced usage, refer to the nano manual by pressing `F1` within the nano editor for a list of available commands.

