return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript", "go", "typescript", "css", "scss", "html", "json", "yaml", "markdown", "vue"
            },
          }),
        },
      })

      -- Set up autoformatting on save
      vim.cmd([[
        augroup AutoFormat
          autocmd!
          autocmd BufWritePre *.go, *.js,*.ts,*.jsx,*.tsx,*.css,*.scss,*.html,*.json,*.vue lua vim.lsp.buf.format()
        augroup END
      ]])
    end
  }
}
