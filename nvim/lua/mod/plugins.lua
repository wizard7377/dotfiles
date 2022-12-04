vim.cmd [[packadd packer.nvim]]

local config = vim.fn.stdpath('config')
vim.o.packpath = vim.o.packpath .. ',' .. config .. '/site'

local packer = require('packer')

packer.startup(
function(use)
     use { 'wbthomason/packer.nvim' }
     use { 'sam4llis/nvim-tundra' }
     use { 'tpope/vim-commentary' }
     use { 'L3MON4D3/LuaSnip' }
     use { 'saadparwaiz1/cmp_luasnip' }
     -- use { 'simrat39/rust-tools.nvim' }
     use { 'lukas-reineke/indent-blankline.nvim' }
     use { 'folke/tokyonight.nvim' }
     use { 'sainnhe/edge' }
     use { 'rmehri01/onenord.nvim' }
    	use "rebelot/kanagawa.nvim"
    	use "projekt0n/github-nvim-theme"
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-tree/nvim-web-devicons' }
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
    use { 'nanozuki/tabby.nvim', config = function() require('mod.tabby') end }
    use { 'feline-nvim/feline.nvim', config = function() require('mod.feline') end}
    use { 'EdenEast/nightfox.nvim', run = ":NightfoxCompile" }
    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
    use { 'windwp/nvim-autopairs', config = function() require('nvim-autopairs').setup({}) end }
    use { 'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end }
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
    use { 'nvim-telescope/telescope.nvim',
	requires  = {
	    {'nvim-lua/plenary.nvim'}
	}
    }
    use { 'folke/noice.nvim' ,
	config = function() require('noice').setup() end,
	requires = {
	    { 'MunifTanjim/nui.nvim' },
	    { 'rcarriga/nvim-notify' }
	}
    }
end)

