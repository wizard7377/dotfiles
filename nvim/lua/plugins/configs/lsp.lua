local servers = {
	{ 'clangd' },
	{ 'gopls' },
	{ 'lua_ls',
		opts = {
			settings = { Lua = {
				telemetry = { enable = false, },
				diagnostics = { globals = { 'vim' }, },
				workspace = { library = vim.api.nvim_get_runtime_file('', true), check_third_party = false },
			}, },
		}
	}
}

local M = {
	{ 'neovim/nvim-lspconfig', lazy = false, dependencies = { { 'folke/neodev.nvim', config = true } },
		config = function()
			local lsp = require('lspconfig')
			local utils = require('core.utils')
			local lsp_keymaps = require('core.mappings').lsp

			for _, ls in ipairs(servers) do
				local opts = ls.opts or {}

				opts.capabilities = require('cmp_nvim_lsp').default_capabilities()
				opts.on_attach = function() utils.keymap_table(lsp_keymaps, true) end

				lsp[ls[1]].setup(opts)
			end
		end,
	},
	{ 'jose-elias-alvarez/null-ls.nvim', event = 'VeryLazy', dependencies = { 'nvim-lua/plenary.nvim' }, },
	{ 'dgagn/diagflow.nvim', dependencies = { 'neovim/nvim-lspconfig' }, opts = { scope = 'line' }, event = 'VeryLazy', enabled = false },
	{ 'https://git.sr.ht/~whynothugo/lsp_lines.nvim', config = true, event = 'VeryLazy',dependencies = { 'neovim/nvim-lspconfig' },
		keys = {
			{ '<leader>ll', function() if require('lsp_lines').toggle() then vim.diagnostic.config({ virtual_lines = { only_current_line = true } }) end end, desc = 'Toggle Lsp Lines' }
		}
	},
}

return M
