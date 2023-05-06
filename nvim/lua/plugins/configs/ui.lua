local M = {
	-- { 'goolord/alpha-nvim', event = 'VimEnter', opts = function() return require('alpha.themes.dashboard').config end },
	{ 'nvim-tree/nvim-web-devicons' },
	{ 'kevinhwang91/nvim-bqf', ft = 'qf' },
	{ 'lukas-reineke/indent-blankline.nvim', event = { "BufReadPre", "BufNewFile" }, 
		opts = { show_first_indent_level = false, show_trailing_blankline_indent = false, show_current_context = true, show_end_of_line = true, } 
	},
	{ 'folke/noice.nvim', event = 'VeryLazy', dependencies = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
		opts = { lsp = { override = { ["vim.lsp.util.convert_input_to_markdown_lines"] = true, ["vim.lsp.util.stylize_markdown"] = true, }, }, }
	},
}

return M
