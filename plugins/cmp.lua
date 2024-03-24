-- Docs on how to customize nvim-cmp: https://docs.astronvim.com/recipes/cmp/
return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      opts.mapping["<leader>a"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" })
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
        { name = "cody", priority = 999 },
      }
      return opts
    end,
  },
}
