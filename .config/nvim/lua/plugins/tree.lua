return {
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { '<leader>t', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file tree' },
    },
    config = function()
      require('nvim-tree').setup()
    end,
  }
}

