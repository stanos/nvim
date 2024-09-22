local status, startup = pcall(require, "startup")
if (not status) then return end

require("startup").setup({theme = "evil"})
