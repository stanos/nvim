vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'rust-lang/rust.vim'
	use 'sbdchd/neoformat'
	use 'rebelot/kanagawa.nvim'
	use 'wbthomason/packer.nvim'
	use { 'stevearc/vim-arduino' }
	use 'projekt0n/github-nvim-theme'
	use 'folke/tokyonight.nvim'
	use 'tjdevries/train.nvim'
	use 'Shatur/neovim-ayu'
	use 'neovim/nvim-lspconfig'
	-- using packer.nvim
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons' }
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'nvim-telescope/telescope-file-browser.nvim'

	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'onsails/lspkind-nvim' -- vscode-like pictograms
	use 'L3MON4D3/LuaSnip'

	use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

	use 'glepnir/lspsaga.nvim' -- LSP UIs
	use 'ggandor/leap.nvim'
	use { 'nvim-orgmode/orgmode' }
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'honza/vim-snippets'
	use 'windwp/nvim-autopairs'
	use 'chriskempson/base16-vim'
	use 'arcticicestudio/nord-vim'
	use 'nvim-telescope/telescope-symbols.nvim'
	use 'xiyaowong/telescope-emoji.nvim'
	use 'morhetz/gruvbox'
	use {
		'svrana/neosolarized.nvim',
		requires = { 'tjdevries/colorbuddy.nvim' }
	}
end)
