local status, telescope = pcall(require, "telescope")
if (not status) then return end



require("telescope").load_extension "file_browser"
require("telescope").setup({
	extensions = {
    emoji = {
      action = function(emoji)
        -- argument emoji is a table.
        -- {name="", value="", cagegory="", description=""}

        --vim.fn.setreg("*", emoji.value)
        --print([[Press p or "*p to paste this emoji]] .. emoji.value)

        -- insert emoji when picked
        vim.api.nvim_put({ emoji.value }, 'c', false, true)
      end,
    }
  },
})
