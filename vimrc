" Maintainer:	Vitalii Yurchenko <vitalik16200@gmail.com>
" Last change:	30.12.2024
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	    for Windows:  ~/.vimrc

" When started as "evim", evim.vim will already have done.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" My config
set number
"set wrap nolist textwidth=0 wrapmargin=0
set linebreak

set nobackup
set nowritebackup
set noswapfile

" terminal background dark/light
" colorscheme elflord default ron torte
"colorscheme default

set mouse=a
set scrolloff=3

" word completion
" keymap: help wildmenu
set wildmenu
"set wildmode=list:longest
set wildmode=longest:full,full


" search
" * - search this word
" n - next match
" N - previous match
set hlsearch

"set shiftwidth=4      " Set shift width to 4 spaces.
"set tabstop=4         " Set tab width to 4 columns.
"set expandtab         " Use space characters instead of tabs.

" Add optional packages.
" https://github.com/junegunn/vim-plug 
if empty(glob('~/.vim/autoload/plug.vim')) "if vim-plug isn't installed
  !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin list
call plug#begin('~/.vim/bundle')
" https://github.com/vim-airline/vim-airline
"Plug 'vim-airline/vim-airline'

" https://github.com/shime/livedown
"Plug 'shime/vim-livedown'

" Keymap: NERDTree
Plug 'scrooloose/nerdtree'

" Keymap(in visual or cmd mode): gc
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

" cmd: Glow
Plug 'jclsn/glow.vim'

Plug 'freitass/todo.txt-vim.git'

" https://github.com/vim-syntastic/syntastic#installation
"Plug 'vim-syntastic/syntastic'

" https://github.com/vhda/verilog_systemverilog.vim
"Plug 'vhda/verilog_systemverilog.vim'

call plug#end()
" endPlugins

" Livedown Plugin
" should markdown preview get shown automatically upon opening markdown buffer
"let g:livedown_autorun = 1
" should the browser window pop-up upon previewing
"let g:livedown_open = 1
" the port on which Livedown server will run
"let g:livedown_port = 1337
" the browser to use, can also be firefox, chrome or other, depending on your executable
"let g:livedown_browser = "Safari"

" nerdtree
" Keymap: work only in command mode
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" todo.txt
let maplocalleader="]"


