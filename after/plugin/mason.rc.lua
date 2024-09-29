local status, mason = pcall(require, "mason")
if (not status) then return end

require("mason").setup()
