# AstroNvim Cheat Sheet

- Install LSPs => `:LspInstall`
- Install language parsers => `:TsInstall`
- Install Debuggers => `:DapInstall`

- Sync plugins => `:Lazy sync`
- Clean plugins => `:Lazy clean`

- Update Mason & Neovim packages => `:AstroUpdate`

## Built in plugins

### AstroCore

- Help file => `:h astrocore`

Functionality for main NeoVim options, global mappings, user commands, etc.

### AstroUI

- Help file => `:h astroui`

UI-related configuration

### AstroLSP

- Help file => `:h astrolsp`

### AstroTheme => `:h astrotheme`

- Help file =>

## Customizing Plugins

Create a plugin by adding a new file in `nvim\lua\plugins\`.

The file should have a `return` statement that returns an object (called a table in lua). Each item in the record object is a single plugin specification (also a record).

Example:

```lua
return { -- Record container
  { -- individual plugin config
    "plugin-name/nvim", -- plugin short URL
    name = "plugin-name", -- name in Lazy
    opts = { -- Lazy options
      -- opts can be a table or a function
      -- plugin-specific options here
    }
  }
}
```

## Overriding Plugins

You can create a `lua/plugins/overridden.lua` file and override plugins there by redifining their `opts` key. The API is the same as any regular plugin.

You may sometimes need to override using a function instead of a table, because merging list-like values does not work with a table.

Also, lazy-loaded plugins require function-style opts.

Example of overriding `nvim-cmp`:

```lua
return {
  "hrsh7th/nvim-cmp",
  opts = function(plugin, opts)
    -- opts parameter is the existing opts table 
    local cmp = require("cmp") -- lazy-load a dependency

    -- Must check for null properties, unlike in a table
    if not opts.mapping then
      opts.mapping = {}
    end

    -- Make some change to mappings
    opts.mapping["<C-x>"] = cmp.mapping.select_next_item()
  end,
}
```

Alternatively, you can use the newer `astrocore.extend_tbl` function:

```lua
return {
  "hrsh7th/nvim-cmp",
  opts = function(plugin, opts)
    local cmp = require("cmp")
    return require("astrocore").extend_tbl(opts, {
      mapping = {
        ["<C-x>"] = cmp.mapping.select_next_item(),
      },
    })
  end,
},
```

AstroCore also provides a convenience function to simplify the list issue described above:

```lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(plugin, opts)
    -- Adds "python" or "vim" to the list if it isn't already there.
    require("astrocore").list_insert_unique(
      opts.ensure_installed,
      {"python", "vim"}
    )
  end, 
}
```
