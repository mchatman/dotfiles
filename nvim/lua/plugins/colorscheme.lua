return {
  'rebelot/kanagawa.nvim',
  priority = 1000,
  config = function()
    local kanagawa = require('kanagawa')
    vim.cmd.colorscheme('kanagawa')
    kanagawa.setup({})
  end,
}
