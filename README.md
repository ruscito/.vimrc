# Vim Configuration

A minimal yet powerful Vim configuration focused on productivity and efficient navigation.

## Features

### Editor Settings
- Line numbers enabled with bold red cursor line number
- 4-space indentation with smart tab handling
- Case-insensitive search (smart case enabled)
- Incremental search highlighting
- Auto-save on buffer switch
- Mouse support enabled
- Visual bell (no audio alerts)
- System clipboard integration

### Key Bindings

**Leader Key:** `Space`

#### Navigation
- `\` - Jump to matching pair (alternative to `%`)
- `J` - Half page down with cursor centered
- `K` - Half page up with cursor centered
- `Tab` - Cycle through windows
- `Ctrl+h/j/k/l` - Navigate between splits

#### Buffer Management
- `F2` - Previous buffer
- `F3` - Next buffer
- `F4` - List buffers

#### Quick Fix Navigation
- `F7` - Previous quick fix result
- `F8` - Next quick fix result

#### Split Management
- `<leader>vs` - Vertical split
- `<leader>hs` - Horizontal split
- `<leader>c` - Close window
- Arrow keys - Resize splits (left/right for vertical, up/down for horizontal)

#### File Explorer
- `<leader>e` - Open file explorer
- `<leader>l` - Open file explorer in left split (Lexplore)

#### File Operations
- `<leader>w` - Save file
- `<leader>q` - Quit

#### Terminal
- `F12` - Open terminal
- `Esc Esc` - Exit terminal mode
- `Tab` - Cycle through windows (works in terminal mode)

#### Insert Mode
- `nm` -  Move cursor above starting point
- `nm1` - Add 1 line above and one line below starting point. Move cursor above starting point
- `nm2` - Add 1 line above and two line below starting point. Move cursor above starting point

#### Visual Mode
- `q` - Decrease indentation
- `Tab` - Increase indentation
- Arrow keys disabled (encourages proper Vim movement)

#### Utility
- `<leader>/` - Clear search highlighting
- `<leader>n` - Toggle between absolute and relative line numbers
- `<leader>o` - Toggle invisible characters
- `<leader>x` - Toggle spell checking
- `<leader>r` - Run `./run.sh` script
- `<leader>b` - Run `./build.sh` script

### Custom Features

#### Status Line
Custom status line showing:
- Current mode (NORMAL, INSERT, VISUAL, etc.)
- Buffer number
- File format
- File type
- Full file path
- Modified flag
- Current line/total lines
- Column number
- Character under cursor (hex value)

#### Automatic Functions
- **Strip Trailing Whitespace:** Automatically removes trailing whitespace on save
- **Restore Position:** Opens files at the last cursor position
- **Syntax Highlighting:** Special color adjustments for Lua files

### Additional Configuration
- Wildmenu enabled with popup menu
- No bracket matching highlight
- Git grep integration (`git grep -n`)
- Backup files preserved during write

## Installation

1. Backup your existing `.vimrc` if you have one:
   ```bash
   mv ~/.vimrc ~/.vimrc.backup
   ```

2. Copy this configuration to your home directory:
   ```bash
   cp vimrc ~/.vimrc
   ```

3. Open Vim and you're ready to go!

## Customization

This configuration is designed to be minimal and easily customizable. Key areas you might want to modify:

- **Color scheme:** Uncomment `colorscheme desert` or choose your preferred scheme
- **Leader key:** Change `let mapleader = " "` to use a different leader key
- **Indentation:** Modify `tabstop` and `shiftwidth` for different spacing
- **Status line colors:** Adjust the `hi User1-5` definitions for different colors

## Requirements

- Vim 8.0 or later recommended
- Git (for git grep functionality)

## License

Feel free to use and modify this configuration as needed.
