local opt = vim.opt

opt.number = true
opt.relativenumber = true

-- OPT = options
opt.spell = true
opt.spelllang = 'en_us'
opt.clipboard:append { 'unnamedplus' }
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.winblend = 0
opt.wrap = false
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.cursorline = true
opt.background = 'dark'
opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
opt.shiftwidth = 2
opt.undofile = true
opt.tabstop = 2
-- opt.list = true
-- opt.lcs = 'eol:⏎,'

vim.o.timeoutlen = 300
