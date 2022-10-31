vim.cmd [[packadd packer.nvim]]

local config = vim.fn.stdpath('config')
vim.o.packpath = vim.o.packpath .. ',' .. config .. '/site'

local packer = require('packer')

packer.startup(
function(use)
	use { 'wbthomason/packer.nvim' }
	use { 'neovim/nvim-lspconfig' }
	use { 'nvim-treesitter/nvim-treesitter' }
	use { 'hrsh7th/nvim-cmp' ,
		requires = {
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'hrsh7th/cmp-nvim-lsp-signature-help' },
			{ 'onsails/lspkind.nvim' }
		}
	}
	use { 'folke/noice.nvim' ,
		-- event =  'VimEnter',
		config = function() require('noice').setup() end,
		requires = {
		    { 'MunifTanjim/nui.nvim' },
		    { 'rcarriga/nvim-notify' }
		}
	}
	use { 'sam4llis/nvim-tundra' }
	use { 'tpope/vim-commentary' }
	use { 'L3MON4D3/LuaSnip' }
	use { 'saadparwaiz1/cmp_luasnip' }
	-- use { 'simrat39/rust-tools.nvim' }
	use { 'norcalli/nvim-colorizer.lua' }
	use {
		'nvim-telescope/telescope.nvim',                 -- fuzzy finder
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use { 'lukas-reineke/indent-blankline.nvim' }                      -- see indentation
	use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
	use { 'folke/tokyonight.nvim' }
	use { 'EdenEast/nightfox.nvim' }
	use { 'sainnhe/edge' }
	use { 'rmehri01/onenord.nvim' }
--	use "rebelot/kanagawa.nvim"
--	use "projekt0n/github-nvim-theme"
end)

require('nvim-autopairs').setup({})
require('colorizer').setup()
