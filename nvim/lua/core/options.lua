local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

opt.backspace = 'indent,eol,start'

opt.clipboard:append('unnamedplus')

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append('-')

vim.bo.softtabstop = 2
vim.wo.number = true
