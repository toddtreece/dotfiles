set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>

syntax on
set novisualbell
set mouse=a
set showcmd
set ruler
set history=3000

set incsearch
set ignorecase
set smartcase

set list
set lcs=tab:>.
set lcs+=trail:·
set lcs+=extends:#
set lcs+=nbsp:.

set nu
set nowrap

set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

let mapleader = ","

map <F2> :NERDTreeToggle<CR>
map <F3> :call FindInNERDTree()<CR>

if &term =~ '256color'
   set t_ut=
endif

set t_Co=256

colorscheme beekai
