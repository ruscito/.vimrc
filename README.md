# Vim Configuration (Rev 0.4)

**Last Updated:** January 26, 2026

This configuration is a lightweight, development-focused Vim setup featuring custom status lines, window management optimization, and build script integration. It prioritizes a clutter-free environment (no swap files, no initial visual bells) and workflow efficiency.

## 📂 Repository Contents

In addition to the `.vimrc`, this repository includes the following directories:

* **`ghostty-config/`**: Contains the custom configuration files for the Ghostty terminal emulator.
* **`vim-colors/`**: Contains the `gruber-darker.vim` colorscheme, which is the required theme for this configuration.

## 📋 Requirements & Dependencies

* **Git:** Required for the custom `grep` command setting (`gp`).
* **Vim 8+:** Recommended for full compatibility with job/terminal features.
* **Colorscheme:** The `gruber-darker` theme (included in the `vim-colors` folder) must be installed in your vim colors directory.

## ⚙️ Core Settings

* **Leader Key:** `<Space>`
* **Indentation:** 4 spaces (Tab and Shift width), auto-indent enabled.
* **Search:** Case insensitive unless capital letters are used (`ignorecase`, `smartcase`).
* **Safety:** `autowrite` is enabled (saves on buffer switch), `noswapfile` (swap files disabled), `backupcopy=yes`.
* **Visuals:** Syntax highlighting on, Line numbers enabled, Cursor line highlighted, Match parentheses disabled.
* **System:** Clipboard sharing enabled (`unnamed`), Mouse support enabled.
* **Clean on Save:** Automatically strips trailing whitespace when saving a file.
* **Restore Position:** Automatically returns the cursor to the last known position when reopening a file.

## ⌨️ Key Mappings

### General & Files
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<Space> w` | Normal | Save buffer. |
| `<Space> q` | Normal | Quit window. |
| `<Space> e` | Normal | Open Netrw (File Explorer). |
| `<Space> l` | Normal | Open Netrw (Lexplore - vertical split). |
| `<Space> c` | Normal | Close current window. |
| `<Space> /` | Normal | Clear search highlighting. |
| `\` | Normal | Jump to matching pair (Remapped from `%`). |

### Navigation & Scrolling
| Key | Mode | Description |
| :--- | :--- | :--- |
| `J` | Normal | Scroll half-page down and center screen. |
| `K` | Normal | Scroll half-page up and center screen. |
| `jk` | Insert | **Exit Insert Mode** (Alternative to Esc). |
| `<Ctrl> + h/j/k/l` | Normal | Navigate between split windows. |
| `<Arrow Keys>` | Normal | Resize split windows (Vertical/Horizontal). |
| `<Arrow Keys>` | Visual | Disabled (forces use of hjkl). |

### Buffers & Splits
| Key | Mode | Description |
| :--- | :--- | :--- |
| `F2` / `<Space> 2` | All | Go to **Previous** buffer. |
| `F3` / `<Space> 3` | All | Go to **Next** buffer. |
| `F4` / `<Space> 4` | All | List buffers and prompt to switch. |
| `<Space> vs` | Normal | Vertical Split. |
| `<Space> hs` | Normal | Horizontal Split. |

### Development & Build
| Key | Mode | Description |
| :--- | :--- | :--- |
| `<Space> r` | Normal | Execute `./run.sh`. |
| `<Space> b` | Normal | Execute `./build.sh`. |
| `F7` | All | Previous Quickfix result (e.g., after grep). |
| `F8` | All | Next Quickfix result. |

### Terminal
| Key | Mode | Description |
| :--- | :--- | :--- |
| `F12` | All | Open Terminal. |
| `<Tab>` | Normal | Switch window. |
| `<Tab>` | Terminal | Switch window (exit terminal focus). |
| `<Esc><Esc>` | Terminal | Exit Terminal insert mode. |

### Editing Helpers
| Key | Mode | Description |
| :--- | :--- | :--- |
| `q` | Visual | Decrease indent (remapped from `<`). |
| `<Tab>` | Visual | Increase indent (remapped from `>`). |
| `nm` | Insert | Insert new line above cursor. |
| `nm1` | Insert | Insert new line below cursor. |
| `nm2` | Insert | Insert blank line below and jump up 2 lines. |

## 🛠️ Toggles & Functions

These mappings toggle specific settings on/off dynamically.

| Key | Description |
| :--- | :--- |
| `<Space> n` | Toggle between **Relative** and **Absolute** line numbers. |
| `<Space> o` | Toggle **Invisible Characters** (show tabs/newlines). |
| `<Space> x` | Toggle **Spell Check**. |

## 📊 Custom Status Line

The configuration includes a custom functional status line featuring:
* Current Mode (Normal, Visual, Insert, etc.).
* Buffer Number.
* File Format & Type.
* Full File Path.
* Modified Flag.
* Current Line / Total Lines.
* Hex code of the character under the cursor.

## 📥 Installation

1.  **Backup existing configuration:**
    ```bash
    mv ~/.vimrc ~/.vimrc.backup
    ```

2.  **Install Colorscheme:**
    Ensure the directory exists and copy the included theme:
    ```bash
    mkdir -p ~/.vim/colors
    cp vim-colors/gruber-darker.vim ~/.vim/colors/
    ```

3.  **Install Vim Configuration:**
    Copy the `.vimrc` to your home directory:
    ```bash
    cp .vimrc ~/
    ```

4.  **Install Ghostty Configuration:**
    Copy the configuration files to your generic config directory:
    ```bash
    mkdir -p ~/.config/ghostty
    cp -r ghostty-config/* ~/.config/ghostty/
    ```
