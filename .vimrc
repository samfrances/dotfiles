set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set breakindent		    " Smart wrap http://stackoverflow.com/questions/1204149/smart-wrap-in-vim

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
