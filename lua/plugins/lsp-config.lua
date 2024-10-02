return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {"ast_grep", "lua_ls", "tsserver", "vuels", "html", "cssls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ast_grep.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.vuels.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
      
      -- Add formatting keymap
      vim.keymap.set('n', '<leader>f', function()
        vim.lsp.buf.format({ async = true })
      end, { desc = "Format file" })
    end
  }
}
