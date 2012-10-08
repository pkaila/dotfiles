" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" sets the language of the menu (gvim)
set langmenu=en_US.UTF-8
" sets the language of the messages / ui (vim)
let $LANG = 'en'

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Set fonts on each system
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Courier_New:h10:cANSI
  elseif has("gui_macvim")
    set guifont=Monaco:h10
  endif
endif

colorscheme molokai

" Hilight search hits and do incremental searches
set hlsearch
set incsearch

" Case insesitive with smartcase (only lowercase -> case insensitive, at least
" one upper case -> case sensitive)
set ignorecase
set smartcase

" Set tabs (tabsize 2, convert tabs to spaces)
set tabstop=2
set shiftwidth=2
set expandtab

" Show linenumbers
set number

" Hide toolbar
set guioptions-=T

" Copy selection to OS clipboard
set guioptions+=a

" Don't do backups
set nobackup
set nowritebackup

" Default window size
set lines=50 columns=150

" Always show cursor position
set ruler

" Show partial commands
set showcmd

" Always show status line
set laststatus=2

" Filetype for gradle scripts
autocmd BufNewFile,BufRead *.gradle set filetype=groovy

" Set the swap location to temp directory in Windows
if has("win32") || has("win64")
  set directory=%TEMP%//
end

