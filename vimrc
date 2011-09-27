set nocompatible          " We're running Vim, not Vi!

set backspace=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent
set hlsearch
set laststatus=2  " Always show status line.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set tabstop=8  " Tabs are 16 spaces so I know to delete them!

set number
set title
set ignorecase
"set showcmd

set showmatch

colorscheme desert256
"colorscheme ir_black
"colorscheme zenburn

call pathogen#infect()
syntax on
filetype plugin indent on

