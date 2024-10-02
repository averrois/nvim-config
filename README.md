# Neovim Configuration Explanation

## Overview

This Neovim configuration is designed to provide a powerful and customizable development environment. It includes various plugins for improved functionality, such as LSP support, file navigation, syntax highlighting, and more.

## Core Setup (`init.lua`)

- Sets the leader key to space
- Installs and sets up the Lazy plugin manager
- Loads custom Vim options and plugins

## Plugin Configuration

### LSP Configuration (`lsp-config.lua`)

- Uses Mason for easy LSP server installation
- Configures LSP servers for multiple languages (Lua, TypeScript, Vue, HTML, CSS, Go)
- Sets up keybindings for LSP functionalities (e.g., hover, definition, code actions)

### Formatting (`formatting.lua`)

- Uses null-ls for code formatting
- Configures Prettier for various file types
- Sets up gofmt for Go files
- Enables autoformatting on save

### File Explorer (`neo-tree.lua`)

- Configures Neo-tree for file system exploration
- Sets up a toggle keybinding (`Ctrl+N`) for showing/hiding the file explorer

### Fuzzy Finder (`telescope.lua`)

- Sets up Telescope for fuzzy finding
- Configures keybindings for file searching, live grep, and more

### Syntax Highlighting (`treesitter.lua`)

- Configures Treesitter for improved syntax highlighting and indentation
- Ensures support for common languages (C, Lua, JavaScript, HTML, CSS)

### Status Line (`lualine.lua`)

- Sets up Lualine for an enhanced status line
- Uses the 'ayu_mirage' theme

### Color Schemes

- Configures multiple color schemes (Horizon, OneDark Pro)

### HTML Autocompletion (`html-autocompletion.lua`)

- Sets up nvim-autopairs for automatic bracket and quote pairing
- Configures nvim-ts-autotag for automatic HTML/XML tag closing and renaming

## Key Features

1. **Language Server Protocol (LSP) Support**: Provides intelligent code completion, diagnostics, and navigation for multiple languages.
2. **Code Formatting**: Automatic code formatting on save for supported languages.
3. **File Navigation**: Easy file browsing with Neo-tree and fuzzy finding with Telescope.
4. **Syntax Highlighting**: Enhanced syntax highlighting with Treesitter.
5. **Status Line**: Informative and customizable status line with Lualine.
6. **Color Schemes**: Multiple color schemes for personalized visual experience.
7. **HTML Editing**: Improved HTML editing experience with automatic tag closing and updating.

## Usage Tips

- Use `<leader>ff` to find files, `<leader>fg` for live grep, and `<leader>fb` to search buffers.
- Press `Ctrl+N` to toggle the file explorer.
- In HTML files, typing a tag name and pressing `>` will automatically close the tag.
- Use `K` to hover over symbols, `gd` to go to definition, and `<leader>ca` for code actions.
- Press `<leader>f` to manually format the current file.

This configuration provides a solid foundation for development in various languages, with a focus on Lua, JavaScript/TypeScript, HTML/CSS, and Go. It can be further customized to suit individual preferences and workflows.
