local map = vim.keymap.set


map("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
map("n", "<space>ts", ":Telescope <CR>")
map('n', '<ESC>', ':nohlsearch<CR>')
