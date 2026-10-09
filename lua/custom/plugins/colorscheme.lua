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
        transparent_background = true,
        show_end_of_buffer = false, -- shows the '~' characters after the end of file
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        custom_highlights = function(colors)
          return {
            CursorLine = { bg = colors.surface0 },
            CursorLineNr = { bg = 'NONE', fg = colors.lavender, bold = true },
          }
        end,
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
          telescope = {
            enabled = true,
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
