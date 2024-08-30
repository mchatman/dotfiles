return {
  -- https://github.com/nvim-treesitter/nvim-treesitter
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      'lua',
      'javascript',
      'typescript',
      'tsx',
    },
  },
  config = function(_, opts)
    local config = require('nvim-treesitter.configs')
    config.setup(opts)
  end,
}
