local M = {
	{ 'folke/which-key.nvim', event = 'VeryLazy', config = true },
	{ 'ggandor/leap.nvim', config = function() require('leap').add_default_mappings() end,
		keys = {
			{ 's', mode = { 'n', 'v', 'x', 'o' }, desc = 'Leap forward' },
			{ 'S', mode = { 'n', 'v', 'x', 'o' }, desc = 'Leap backward' },
			{ 'gs', mode = { 'n', 'v', 'x', 'o' }, desc = 'Leap from windows' },
			{ 'x', mode = 'v', desc = 'Leap forward (exclusive)' },
			{ 'X', mode = 'v', desc = 'Leap backward (exclusive)' },
		},
	},
	{ 'numToStr/Comment.nvim', event = 'VeryLazy', config = true },
	-- { 'lewis6991/impatient.nvim', lazy = false, priority = 10000000, config = function() require('impatient') end }
}

return M
