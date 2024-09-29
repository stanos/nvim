--Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ "xiyaowong/telescope-emoji.nvim" },
		{ "nvim-telescope/telescope-symbols.nvim" },
		{
			"max397574/better-escape.nvim",
			config = function()
				require("better_escape").setup({
					timeout = 250
				})
			end,
		},
		{
			"folke/tokyonight.nvim",
			lazy = false, -- make sure we load this during startup if it is your main colorscheme
			priority = 1000, -- make sure to load this before all the other start plugins
			config = function()
				-- load the colorscheme here
				vim.cmd([[colorscheme tokyonight-night]])
			end,
		},
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
		-- init.lua:
		{
			'nvim-telescope/telescope.nvim', tag = '0.1.8',
			-- or                              , branch = '0.1.x',
			dependencies = { 'nvim-lua/plenary.nvim' }
		},

		{
			"lukas-reineke/indent-blankline.nvim",
			main = "ibl",
			---@module "ibl"
			---@type ibl.config
			opts = {},
		},
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function () 
				local configs = require("nvim-treesitter.configs")

				configs.setup({
					ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
					sync_install = false,
					highlight = { enable = true },
					indent = { enable = true },  
				})
			end
		},
		{
			"nvim-telescope/telescope-file-browser.nvim",
			dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
		},
		{
			"folke/which-key.nvim",
			event = "VeryLazy",
			opts = {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
			keys = {
				{
					"<leader>?",
					function()
						require("which-key").show({ global = false })
					end,
					desc = "Buffer Local Keymaps (which-key)",
				},
			},
		},
		{
			"ray-x/lsp_signature.nvim",
			event = "VeryLazy",
			opts = {},
			config = function(_, opts) require'lsp_signature'.setup(opts) end
		},
		{
			"williamboman/mason.nvim"
		},
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/nvim-cmp" },
		{ "neovim/nvim-lspconfig" },
		{ "petertriho/cmp-git" },
		{ "nvim-lua/plenary.nvim" },
		{ "onsails/lspkind-nvim" },
		{ "williamboman/mason-lspconfig.nvim" },
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' }
		},
		{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'}


	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
