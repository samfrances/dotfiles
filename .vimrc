" Vim-plug section
" See https://github.com/junegunn/vim-plug

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

"All from github"

Plug 'vim-scripts/indentpython.vim'

Plug 'sickill/vim-monokai'

Plug 'sheerun/vim-polyglot'

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'jiangmiao/auto-pairs'

Plug 'wlangstroth/vim-racket'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" END Vim-plug section


set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set breakindent		    " Smart wrap http://stackoverflow.com/questions/1204149/smart-wrap-in-vim
set autochdir

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
set showcmd                     " show (partial) command in status line

" enable line numbers
:set number

" enable monokai theme
if !exists("g:syntax_on")
    syntax enable
endif
colorscheme monokai

" Autostrip trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


" Settings for airlines plugin
set laststatus=2        " Necessary for vim-airline plugin
let g:airline#extensions#tabline#enabled = 1    " Better tabline
let g:airline_powerline_fonts = 1
set encoding=utf-8
if has("win32")
    set guifont=DejaVu_Sans_Mono_for_Powerline:h11:cANSI:qDRAFT
else
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
endif
