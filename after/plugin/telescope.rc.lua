local status, telescope = pcall(require, "telescope")
if (not status) then return end



require("telescope").load_extension "file_browser"

