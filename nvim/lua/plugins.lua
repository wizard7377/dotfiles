local config = vim.fn.stdpath('config')
vim.o.packpath = vim.o.packpath .. ',' .. config .. '/site'

local packer = require('packer')
packer.startup(
function(use)
	use 'neovim/nvim-lspconfig'
	use 'nvim-treesitter/nvim-treesitter'
	use 'hrsh7th/nvim-cmp'
	use 'tpope/vim-commentary'
	use 'L3MON4D3/LuaSnip'
	use 'simrat39/rust-tools.nvim'

	use 'folke/tokyonight.nvim'
	use 'EdenEast/nightfox.nvim'
	use 'sainnhe/edge'
	use 'rmehri01/onenord.nvim'
	use "rebelot/kanagawa.nvim"
	use "projekt0n/github-nvim-theme"
end) 
