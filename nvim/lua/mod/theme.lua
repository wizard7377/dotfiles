require('nightfox').setup({
    options = {}
})
require('tokyonight').setup({
    styles = {
	comments = { italic = false },
	keywords = { italic = false }
    }
})
vim.cmd [[colorscheme carbonfox]]
