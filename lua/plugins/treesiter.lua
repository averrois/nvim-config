return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "css", "go" },
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
