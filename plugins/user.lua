return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  -- COMMON Events
  -- User AstroFile - Triggered after opening a file
  -- VeryLazy       - Triggered after starting NeoVim
  -- BufEnter *.lua - Triggered after opening a Lua file (for filetype-specific extensions)
  -- InsertEnter    - Triggered after entering insert mode
  -- LspAttach      - Triggered after starting LSPs.
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  {
    "sourcegraph/sg.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    config = function() require("sg").setup {} end,
  },
}
