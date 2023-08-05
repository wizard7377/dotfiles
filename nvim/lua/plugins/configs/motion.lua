local flash = require('core.utils').fn('flash')

local M = {
	{ 'folke/flash.nvim', opts = {},
		keys = {
			{ 's', mode = { 'n', 'v', 'x', 'o' }, flash('jump'), desc = 'Flash' },
			{ 'S', mode = { 'n', 'v', 'x', 'o' }, flash('treesitter'), desc = 'Flash Treesitter' },
			{ 'r', mode = { 'o' }, flash('remote'), desc = 'Remote Flash' },
			{ 'R', mode = { 'o', 'x' }, flash('treesitter_search'), desc = 'Flash Treesitter Search' },
		}
	},
}

return M
