vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true
vim.opt.fillchars:append({ eob = " " })

vim.g.mapleader = " "
vim.opt.relativenumber = true

-- Always show sign column to prevent text shifting
vim.opt.signcolumn = "yes"  -- or "no" if you want to disable it completely

-- Prevent swap
vim.opt.swapfile = false

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Simple window navigation with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window', silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window', silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to window below', silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to window above', silent = true })

-- Close window with leader + c (easier than Ctrl-w)
vim.keymap.set('n', '<leader>c', ':q<CR>', { desc = 'Close window', silent = true })

-- Quick window management
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', { desc = 'Split window vertically', silent = true })
vim.keymap.set('n', '<leader>wh', ':split<CR>', { desc = 'Split window horizontally', silent = true })
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size', silent = true })

-- Optional: Resize windows with Alt + arrow keys
vim.keymap.set('n', '<A-Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width', silent = true })
vim.keymap.set('n', '<A-Right>', ':vertical resize +2<CR>', { desc = 'Increase window width', silent = true })

