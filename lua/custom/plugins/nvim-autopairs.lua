return {
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {
        check_ts = true,
        enable_mappings = true,
        map_cr = true,
      }
    end,
  },
}
