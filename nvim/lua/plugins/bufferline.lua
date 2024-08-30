return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup({
      highlights = {
        buffer_selected = {
          bold = false,
          italic = false,
        },
      },

      options = {
        hover = {
          enabled = true,
          delay = 100,
          reveal = { 'close' },
        },

        indicator = {
          style = 'underline',
        },
      },
    })
  end,
}
