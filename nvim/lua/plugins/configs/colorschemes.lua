local M = {
	{ 'folke/tokyonight.nvim', opts = { style = 'moon' }, },
	{ 'EdenEast/nightfox.nvim', build = ':NightfoxCompile' },
	-- { 'nyoom-engineering/oxocarbon.nvim' },
	{ 'catppuccin/nvim', lazy = false, priority = 10000, name = 'catppuccin', build = ':CatppuccinCompile',
		init = function() vim.api.nvim_set_hl(0, 'NotifyBackground', { fg = '#000000', bg = '#000000' }) vim.g.neovide_transparency = 0 end,
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
				transparent_background = true,
			}

			require('catppuccin').setup(opts)
			vim.cmd [[colo catppuccin-mocha]]
		end,
	},
}

return M
