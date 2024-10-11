-- lua/plugins/comment.lua

return {
  "numToStr/Comment.nvim",
  opts = {
    -- Add any custom configuration here (optional)
  },
  lazy = false,
  config = function()
    require("Comment").setup()

    -- Set up keybindings
    vim.keymap.set("n", "<leader>co", "gcc", { desc = "Comment line" })
    vim.keymap.set("v", "<leader>co", "gc", { desc = "Comment selection" })
    vim.keymap.set("n", "<leader>uc", "gcc", { desc = "Uncomment line" })
    vim.keymap.set("v", "<leader>uc", "gc", { desc = "Uncomment selection" })
  end,
}

