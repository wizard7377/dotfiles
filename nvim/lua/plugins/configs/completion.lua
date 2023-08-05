local M = {
	{ 'hrsh7th/nvim-cmp', event = 'InsertEnter',
		opts = function()
			local cmp = require('cmp')
			local luasnip = require('luasnip')
			local M = {}

			M.view = { entries = { 'custom', } }

			M.window = { completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered() }

			M.formatting = {
				format = require('lspkind').cmp_format({
					mode = 'symbol_text', max_width = 150,
					menu = {
						luasnip = '[LuaSnip]',
						nvim_lsp = '[LSP]',
						nvim_lua = '[Lua]',
						neorg = '[Neorg]',
						buffer = '[Buffer]',
						path = '[Path]',
					}
				}),
			}

			-- M.completion = { keyword_length = 2 }

			M.experimental = { ghost_text = { hl_group = 'Comment' } }

			M.snippet = { expand = function(args) luasnip.lsp_expand(args.body) end }

			M.preselect = cmp.PreselectMode.None

			M.mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true, }),
				['<S-CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true }),
				['<M-k>'] = cmp.mapping(function() if luasnip.jumpable(1) then luasnip.jump(1) end end, { 'i', 's' }),
				['<M-j>'] = cmp.mapping(function() if luasnip.jumpable(-1) then luasnip.jump(-1) end end, { 'i', 's' }),
				['<M-l>'] = cmp.mapping(function() if luasnip.jumpable(1) then luasnip.jump(1) end end, { 'i', 's' }),
				['<M-h>'] = cmp.mapping(function() if luasnip.jumpable(-1) then luasnip.jump(-1) end end, { 'i', 's' }),
				['<Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_next_item() else fallback() end end, { 'i', 's' }),
				['<S-Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_prev_item() else fallback() end end, { 'i', 's' }),
			})

			M.sources = cmp.config.sources({
				{ name = 'luasnip' },
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lua' },
				{ name = 'neorg' },
				{ name = 'buffer' },
				{ name = 'path' },
			})

			return M
		end,
		dependencies = {
			'windwp/nvim-autopairs',
			'L3MON4D3/LuaSnip',
			'onsails/lspkind.nvim',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lua',
		},
	},

	{ 'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
			local npairs = require'nvim-autopairs'
			local cond = require('nvim-autopairs.conds')
			local Rule   = require'nvim-autopairs.rule'

			local brackets = { { '(', ')' }, { '[', ']' }, { '{', '}' } }
			npairs.add_rules({
				Rule('=', '')
					:with_pair(cond.not_inside_quote())
					:with_pair(function(opts)
						local last_char = opts.line:sub(opts.col - 1, opts.col - 1)
						if last_char:match('[%w%=%s]') then
							return true
						end
						return false
					end)
					:replace_endpair(function(opts)
						local prev_2char = opts.line:sub(opts.col - 2, opts.col - 1)
						local next_char = opts.line:sub(opts.col, opts.col)
						next_char = next_char == ' ' and '' or ' '
						if prev_2char:match('%w$') then
							return '<bs> =' .. next_char
						end
						if prev_2char:match('%=$') then
							return next_char
						end
						if prev_2char:match('=') then
							return '<bs><bs>=' .. next_char
						end
						return ''
					end)
					:set_end_pair_length(0)
					:with_move(cond.none())
				:with_del(cond.none()),

				Rule(' ', ' ')
					:with_pair(function (opts)
						local pair = opts.line:sub(opts.col - 1, opts.col)
						return vim.tbl_contains({
							brackets[1][1]..brackets[1][2],
							brackets[2][1]..brackets[2][2],
							brackets[3][1]..brackets[3][2],
						}, pair)
				end)
			})
			for _,bracket in pairs(brackets) do
				npairs.add_rules {
					Rule(bracket[1]..' ', ' '..bracket[2])
						:with_pair(function() return false end)
						:with_move(function(opts)
							return opts.prev_char:match('.%'..bracket[2]) ~= nil
						end)
					:use_key(bracket[2])
				}
			end


			-- Hook nvim-cmp to insert () 
			local cap = require('nvim-autopairs.completion.cmp')
			require('cmp').event:on('confirm_done', cap.on_confirm_done())
		end
	},

	{ 'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets', },
		opts = { history = true, delete_check_events = 'TextChanged', update_events = { 'TextChanged', 'TextChangedI' } },
		config = function() require('luasnip.loaders.from_vscode').lazy_load() end, },
}

return M
