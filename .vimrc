set encoding=utf-8
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Solarized stuff
syntax enable
set background=light

set clipboard=unnamed

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

colorscheme solarized

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on     " required!

:set number
:let mapleader = ","
:set tabstop=8 softtabstop=2 shiftwidth=2 expandtab

" mappings
"
:nnoremap <Leader>nt :NERDTreeToggle<CR>
:nnoremap <Leader>st :set tabstop=8 softtabstop=2 shiftwidth=2 expandtab<CR>
:nnoremap <Leader>rt :set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab<CR>
:nnoremap <Leader>j o<Esc>0Dk<CR>
:nnoremap <Leader>k O<Esc>0Dj<CR>

" window switching sanity
"
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" function to switch light and dark background
call togglebg#map("<F5>")

" whitespace hiliter
:set list lcs=trail:·,tab:›·

" more apparent active buffer
hi StatusLine   ctermfg=230  ctermbg=125  cterm=none gui=none

" and I want column numbers
set rulerformat=col\ %c
set ruler

" timing
:set tm=500

" autocommands
:au InsertEnter * set nolist
:au InsertLeave * set list
:au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
:au WinLeave * setlocal nocursorline
