local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    separator_style = 'slant',
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true
  },
})

vim.keymap.set('n', '<space><Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<space><S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
