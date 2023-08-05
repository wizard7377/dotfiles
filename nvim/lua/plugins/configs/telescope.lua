local tb = require('core.utils').fn('telescope.builtin')

local M = {
	{ 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, cmd = 'Telescope',
		keys = {
			{ '<leader>fb', tb('buffers'), desc = 'Find Buffer' },
			{ '<leader>fw', tb('live_grep'), desc = 'Find Word' },
			{ '<leader>ff', tb('find_files'), desc = 'Find File' },
			{ '<leader>fg', tb('git_files'), desc = 'Find Git File' },
			{ '<leader>qf', tb('quickfix'), desc = 'Quickfix List' },
			{ '<leader>fs', tb('treesitter'), desc = 'Find Symbol in Document [TS]' },
			{ '<leader>fz', tb('current_buffer_fuzzy_find'), desc = 'Fuzzy Find in current buffer' },

			{ '<leader>.', tb('live_grep'), desc = 'Find Word' },
			{ '<leader>,', tb('find_files'), desc = 'Find Files' },
			{ '<leader><space>', tb('builtin'), desc = 'Open Telescope' },
			{ '<leader>/', tb('current_buffer_fuzzy_find'), desc = 'Fuzzy Find in current buffer' },
		}
	},
}

return M
