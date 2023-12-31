require('core.utils').ensure_lazy()

local opts = {
	defaults = { lazy = true, version = false },
	install = { colorscheme = { 'catppuccin' } },
	performance = { rtp = { disabled_plugins = {
		'2html_plugin',
		'tohtml',
		'getscript',
		'getscriptPlugin',
		'gzip',
		'logipat',
		'netrw',
		'netrwPlugin',
		'netrwSettings',
		'netrwFileHandlers',
		'matchit',
		'tar',
		'tarPlugin',
		'rrhelper',
		'spellfile_plugin',
		'vimball',
		'vimballPlugin',
		'zip',
		'zipPlugin',
		'tutor',
		'rplugin',
		'syntax',
		'synmenu',
		'optwin',
		'compiler',
		'bugreport',
		'ftplugin',
	} } }
}

require('lazy').setup('plugins.configs', opts)
