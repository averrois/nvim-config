vim.cmd("set expandtab")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")

-- NOTE setup leader key
vim.g.mapleader = " "

-- NOTE Here it checkes if Lazy installed if not install it
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")

-- require("onedark").setup()

vim.cmd.colorscheme "onedark"

-- NOTE Telescope nvim config
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Key maps for neo-vim tree
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})

local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "css" },
  highlight = { enable = true },
  indent = { enable = true }
})

