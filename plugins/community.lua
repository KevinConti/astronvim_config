return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- COLORSCHEMES
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  -- COMPLETION
  --  Codeium
  --    Commands:
  --    <C-g> : Accept suggestion
  --    <C-;> : Next suggestion
  --    <C-,> : Previous suggestion
  --    <C-x> : Clear suggestions
  --    <leader>; : Toggle Codeium
  { import = "astrocommunity.completion.codeium-vim" },
  -- DIAGNOSTICS
  --  Trouble
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- EDITING SUPPORT
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  -- LSP
  { import = "astrocommunity.lsp.lsp-lens-nvim" },
  -- MOTION
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.motion.tabout-nvim" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- PACKS
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.pack.docker" },
  -- { import = "astrocommunity.pack.gleam" }, -- Seems to be out of commission
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.yaml" },
  -- SCROLLING
  { import = "astrocommunity.scrolling.neoscroll-nvim" },
}
