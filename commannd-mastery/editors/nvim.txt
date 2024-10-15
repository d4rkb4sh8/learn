 Neovim (often abbreviated as NVim) is a highly configurable text editor built on top of Vim, which itself is a highly configurable text editor based on Vi. Since you're running Neovim within Kali Linux's terminal, it means you have access to all the powerful features and customization options that both Vim and Neovim provide. Below are some key features and commands you might find useful in your NVim setup:

### Basic Navigation
- **Movement Commands**: You can use standard Vi motion commands like `h`, `j`, `k`, `l` for left, down, up, and right respectively. For more advanced movements, consider using words (`w`, `e`), lines (`0`, `$`), or visual mode (`v`, `V`).
- **Scroll**: Use the arrow keys or `Ctrl-f` (forward) and `Ctrl-b` (backward) to scroll. In Neovim, you can also use `Ctrl-d` for half a screen down and `Ctrl-u` for half a screen up.

### Editing Commands
- **Insert Mode**: To enter insert mode, press `i` to start inserting before the cursor, or `a` to start inserting after the cursor. Press `I` to insert at the beginning of the line, and `A` to insert at the end of the line.
- **Delete/Cut/Paste**: Use `x` to delete the character under the cursor. For cutting (`d`), you can use similar commands like `dd` (delete a whole line), or more specific movements with `dw`, `de`. To paste, simply press `p` to paste after the cursor or `P` to paste before the cursor.
- **Copy**: You can visually select text and then yank it (`y`) or cut it (`d`), which will copy/cut it to a register.

### Search and Replace
- **Search**: Use `/` followed by your search term, then press `n` to find the next occurrence and `N` for the previous one. You can also use `*` (forward) and `#` (backward) to navigate matches while in normal mode.
- **Substitute**: The substitute command is powerful and versatile. In visual mode, you can type `:s` (substitute), then provide a range, replacement, and optionally the match. For example, `:s/foo/bar/g` will replace all instances of "foo" with "bar" in the current line.

### Multi-file Editing
- **Buffers**: Neovim allows you to open multiple files using buffers. You can switch between them by typing `:bnext`, `:bprev`, or specifying a buffer number.
- **Tabs**: Use `Ctrl-w` followed by `t` to create a new tab, and then navigate with `:tabnext` and `:tabprev`.

### Plugins and Configuration
- **Plugins**: You can use plugins like `vim-plug`, `packer.nvim`, or `dein.vim` to extend Neovim's functionality. These tools help manage a wide range of plugins, themes, and more.
- **Configuration**: Your `.vimrc` (or now `.config/nvim/init.vim`) is where you configure settings like appearance (`set number`, `syntax on`), behavior (`set autoindent`), and mappings (`nnoremap`, `vnoremap`).

### Terminal Integration
- **Terminal Mode**: Neovim can be used directly within the terminal, allowing for seamless integration with other terminal features.

### Example Commands
Here are some example commands you might use in your NVim setup on Kali Linux:
```vim
:set number          " Show line numbers
:set autoindent      " Enable auto-indentation
:set tabstop=4       " Set tab spacing to 4 spaces
:set shiftwidth=4    " Number of spaces for each step of (auto)indent
:i<space><space>    " Insert two spaces in insert mode
:nohlsearch         " Clear highlights from searches
:tabnew             " Open a new tab
```

These commands and features can be combined, customized, and expanded based on your specific needs and workflow.

