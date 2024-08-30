vim.g.mapleader = ' '

local keymap = vim.keymap

-- General
keymap.set('i', 'jk', '<ESC>') -- exit insert mode with jk

-- Buffers
keymap.set('n', '<leader>n', ':bn<cr>')
keymap.set('n', '<leader>p', ':bp<cr>')
keymap.set('n', '<leader>x', ':bd<cr>')

-- Window Management
keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- split windows in equal width
keymap.set('n', '<leader>sx', '<:close<CR>') -- close current split window

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').grep_string, {})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})

-- Neotree
keymap.set('n', '<leader>ee', ':Neotree filesystem reveal left<CR>', {})

-- Vim-maximizer
keymap.set('n', '<leader>sm', ':MaximizerToggle<CR>') -- toggle maximize tab

-- LSP
keymap.set('n', '<leader>gg', '<cmd>lua vim.lsp.buf.hover()<CR>')
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('v', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

-- Debugging
keymap.set('n', '<leader>bb', '<cmd>lua require"dap".toggle_breakpoint()<CR>')
keymap.set('n', '<leader>br', '<cmd>lua require"dap".clear_breakpoints()<CR>')
-- keymap.set('n', '<leader>ba', '<cmd>Telescope dap list_breakpoints()<CR>')
keymap.set('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>')
keymap.set('n', '<leader>dj', '<cmd>lua require"dap".step_over()<CR>')
keymap.set('n', '<leader>dk', '<cmd>lua require"dap".step_into()<CR>')
keymap.set('n', '<leader>do', '<cmd>lua require"dap".step_out()<CR>')
keymap.set('n', '<leader>dd', function()
  require('dap').disconnect()
  require('dapui').close()
end)
keymap.set('n', '<leader>dt', function()
  require('dap').terminate()
  require('dapui').close()
end)

keymap.set('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>')

-- keymap.set('n', '<leader>tc', function()
--   if vim.bo.filetype == 'python' then
--     require('dap-python').test_class()
--   end
-- end)
