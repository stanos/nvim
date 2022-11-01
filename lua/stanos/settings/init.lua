local opt = vim.opt
--vim.cmd [[colorscheme nord]]
-- numbers
opt.relativenumber = true
opt.number = true

opt.clipboard:append { 'unnamedplus' }
opt.ignorecase = true
opt.smartcase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
