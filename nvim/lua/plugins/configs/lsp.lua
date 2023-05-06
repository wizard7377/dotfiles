local M = {
	{ 'neovim/nvim-lspconfig', event = 'VeryLazy' },
	{ 'williamboman/mason.nvim', build = ':MasonUpdate', event = 'VeryLazy' },
	{ 'williamboman/mason-lspconfig.nvim', event = 'VeryLazy' },
	{ 'VonHeikemen/lsp-zero.nvim', event = 'VeryLazy' },
	{ 'jose-elias-alvarez/null-ls.nvim', event = 'VeryLazy', dependencies = { 'nvim-lua/plenary.nvim' }, },
}

return M
