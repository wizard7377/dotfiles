call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
"Plug 'ycm-core/YouCompleteMe'
Plug 'bfrg/vim-cpp-modern'
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:lightline = { 'colorscheme': 'onedark' }
set tabstop=3
set shiftwidth=3
set number
let c_no_curly_error = 1
syntax on
colorscheme onedark
filetype plugin indent on
set autoindent
set path+=**
