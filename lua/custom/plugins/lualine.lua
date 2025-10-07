return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'iceberg_dark',
          section_seperators = '',
          component_seperators = '',
        },
      }
    end,
  },
}
