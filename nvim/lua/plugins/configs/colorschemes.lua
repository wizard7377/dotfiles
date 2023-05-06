local M = {
	{ 'folke/tokyonight.nvim', opts = { style = 'moon' }, }, 
	{ 'catppuccin/nvim', lazy = false, priority = 10000, name = 'catppuccin', build = ':CatppuccinCompile',
		config = function() 
			local opts = { 
				integrations = {
					gitsigns = true,
					indent_blankline = { enabled = true },
					leap = true, 
					lsp_trouble = true,
					markdown = true,
					noice = true,
					telescope = true,
					treesitter = true,
				}, 
			-- transparent_background = true, 
			}

			require('catppuccin').setup(opts)
			vim.cmd [[colo catppuccin]] 
		end,
	},
}

return M
