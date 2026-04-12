-- return {
--   {
--     'Mofiqul/vscode.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require('vscode').setup {
--         transparent = true,
--       }
--       require('vscode').load()
--     end,
--   },
-- }

return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappé, macchiato, mocha
        background = {
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = false,
        show_end_of_buffer = false, -- shows the '~' characters after the end of file
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          -- For Kickstart's Telescope usage
          telescope = {
            enabled = true,
          },
        },
      }

      -- setup must be called before loading
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
-- return {
--   {
--     'rose-pine/neovim',
--     name = 'rose-pine',
--     priority = 1000, -- Ensures this loads before other plugins
--     config = function()
--       require('rose-pine').setup {
--         variant = 'main', -- 'main', 'moon', or 'dawn'
--         dark_variant = 'main', -- 'main' or 'moon'
--         dim_inactive_windows = false,
--         extend_background_behind_borders = true,
--
--         styles = {
--           bold = true,
--           italic = true,
--           transparency = false, -- Set to true if you want your terminal background to show through
--         },
--
--         -- Custom highlight groups
--         highlight_groups = {
--           -- You can add custom color overrides here
--         },
--       }
--
--       -- Set the colorscheme
--       vim.cmd 'colorscheme rose-pine'
--     end,
--   },
-- }
