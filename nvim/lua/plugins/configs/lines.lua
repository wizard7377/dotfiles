local fg = function(name)
	return function()
		---@diagnostic disable-next-line: undefined-field
		local hl = vim.api.nvim_get_hl_by_name(name, true)
		return hl and hl.foreground and { fg = string.format('#%06x', hl.foreground) }
	end
end

local M = {
	{ 'nvim-lualine/lualine.nvim', event = 'VeryLazy',
		opts = {
			disabled_filetypes = { statusline = { 'dashboard', 'lazy', 'alpha' } },
			-- tabline = { lualine_c = { 'aerial' }, },
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch' },
				lualine_c = {
					{ 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 1 } },
					{ 'filename', path = 1, symbols = { modified = '  ', unnamed = '' }, separator = '' },
					{ '%=', separator = '' },
					-- ---@diagnostic disable-next-line: undefined-field
					-- { 'diff', source = function() local gs = vim.b.gitsigns_status_dict if gs then gs.modified = gs.changed end return gs end, separator = '' },
					{ 'diagnostics', separator = '' },
					{ '%=', separator = '' }
				},
				lualine_x = {
					{
						function() return require('noice').api.status.command.get_hl() end, color = fg('Statement'),
						cond = function() return package.loaded['noice'] and require('noice').api.status.command.has() end,
					},
					{
						function() return require('noice').api.status.mode.get() end, color = fg('Constant'),
						cond = function() return package.loaded['noice'] and require('noice').api.status.mode.has() end,
					},
				},
				lualine_y = { { 'progress', separator = ' ', padding = { left = 1, right = 0 } }, { 'location', padding = { left = 0, right = 1 } }, },
				lualine_z = { function() return ' ' .. os.date('%R') end, },
			},
			extensions = { 'aerial', 'quickfix', 'lazy' },
		},
	}
}

return M
