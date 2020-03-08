"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vivien/vim-linux-coding-style'
Plugin 'othree/html5.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rakr/vim-one'
Plugin 'alvan/vim-closetag'
Plugin 'pgdouyon/vim-yin-yang'
Plugin 'w0ng/vim-hybrid'
Plugin 'vim-scripts/true-monochrome'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'kkoenig/wimproved.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'sindresorhus/focus', {'rtp': 'vim'}

call vundle#end()
filetype plugin indent on

"no bars
"set guioptions -=m
"set guioptions -=T
"set guioptions -=r

"indentation
"autocmd BufRead,BufNewFile * set tabstop=4|set shiftwidth=4|set autoindent|set smartindent|set noexpandtab
autocmd BufRead,BufNewFile *.html set tabstop=2|set shiftwidth=2|set autoindent|set smartindent|set noexpandtab
autocmd BufRead,BufNewFile *.txt set tabstop=4|set shiftwidth=4|set autoindent|set smartindent|set noexpandtab

"search
set ignorecase
set smartcase

"aesthetics
"gui
"set guifont=xos4\ Terminus\ 10
"rest
set t_Co=256
syntax on
"colorscheme pencil
colorscheme PaperColor
set background=dark

"set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey15
autocmd ColorScheme * highlight Normal ctermbg=black
autocmd ColorScheme * highlight NonText ctermbg=None
