return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      highlight = "IBLIndent",
    },
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
      highlight = "IBLScope",
    },
  },
  config = function(_, opts)
    require("ibl").setup(opts)

    -- Custom highlights
    vim.api.nvim_set_hl(0, "IBLIndent", { fg = "#3a3a3a", nocombine = true })
    vim.api.nvim_set_hl(0, "IBLScope", { fg = "#606060", nocombine = true })
  end,
}
