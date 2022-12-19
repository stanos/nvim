local opt = vim.opt

-- Theme / Colorscheme
vim.cmd [[colorscheme kanagawa]]

-- numbers
opt.relativenumber = true
opt.number = true

-- OPT = options
opt.clipboard:append { 'unnamedplus' }
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.background = 'dark'
opt.shiftwidth = 2
opt.tabstop = 2
