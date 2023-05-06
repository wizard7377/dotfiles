local tb = function(name, opts)
	return function() require('telescope.builtin')[name](opts) end
end

local M = {
	'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, cmd = 'Telescope',
	keys = {
		{ '<leader>fb', tb('buffers'), desc = 'Find Buffer' },
		{ '<leader>fw', tb('live_grep'), desc = 'Find Word' },
		{ '<leader>ff', tb('find_files'), desc = 'Find File' },
		{ '<leader>qf', tb('quickfix'), desc = 'Quickfix List' },
		{ '<leader>fs', tb('treesitter'), desc = 'Find Symbol (treesitter)' },
		{ '<leader>fz', tb('current_buffer_fuzzy_find'), desc = 'Fuzzy Find in current buffer' },

		{ '<leader>t', tb('builtin'), desc = 'Open Telescope' }, 
		{ '<leader>,', tb('find_files'), desc = 'Find Files' },
		{ '<leader>.', tb('live_grep'), desc = 'Find Word' }
	}
}

return M
