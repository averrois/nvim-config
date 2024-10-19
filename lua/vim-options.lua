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
