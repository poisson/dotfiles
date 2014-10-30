set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Bundles stored here for now
Bundle 'gmarik/vundle'
Bundle 'Smart-Tabs'
Bundle 'chase/vim-ansible-yaml'
" Plugins that don't work under Cygwin
if !has('win32unix')
endif

" Enable filetype detection, filetype-specific plugins, filetype-specific
" indentation
filetype plugin indent on

" Enable syntax highlighting for detected filetypes
syntax on

" Set backspace options
set backspace=indent,eol,start

" Turn on hybrid line numbering by setting both of these
set relativenumber number

" Set map leader key to 
let mapleader = ','

" Move lines up and down in the file in normal mode with CTRL-UP and
" CTRL-DOWN. Do not allow recursive mappings to trigger.
nnoremap <c-up> ddkP
nnoremap <c-down> ddp

" CTRL-u mapping to upper case a word in insert mode (for long constants). Do
" not allow recursive mappings to trigger
inoremap <c-u> <esc>viwU<esc>i

" Make H and L behave like Home and End
nnoremap H ^
nnoremap L g_

" Set jk as <esc> in insert mode. Disable normal <esc> to force muscle memory.
inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <nop>
vnoremap <esc> <nop>

" Temporary <nop> mapping of the arrow keys, we'll see if I get used to it
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Set tabstop to 4
set ts=4

" Show status bar even if there is only one window
set laststatus=2

augroup vimrc
	au!
	" Source .vimrc whenever it is successfully written, removing old mappings on
	" this event (because otherwise writing it over and over causes lag to build)
	au BufWritePost $MYVIMRC :source $MYVIMRC
augroup END

set nocompatible

