return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_lsp", "gopls", "cssls", "bashls", "html", "tsserver", "tailwindcss", "vuels", "jsonls"  }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_lsp.setup({})
      lspconfig.gopls.setup({})
      lspconfig.cssls.setup({})
      lspconfig.bashls.setup({})
      lspconfig.html.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.vuels.setup({})
      lspconfig.jsonls.setup({})

      -- Key Binding --
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    end
  }
}
