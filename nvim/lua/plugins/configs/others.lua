local M = {
	{ 'folke/which-key.nvim', event = 'VeryLazy', config = true },
	{ 'lewis6991/gitsigns.nvim', event = { 'BufReadPre', 'BufNewFile' }, cmd = 'Gitsigns', config = true },
	{ 'numToStr/Comment.nvim', event = 'VeryLazy', config = true },
}

return M
