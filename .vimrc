set nocompatible " switch to vim functionality
syntax on " Turn on syntax highlighting
set shortmess+=I " Disable the default Vim startup message.
set nowrap
set number " Show line numbers.
set relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab  "use spaces in stead of tab characters
set smartindent
set laststatus=2 " Always show the status line at the bottom, even if you only have one window open.
set backspace=indent,eol,start " More reasonable backspace behavior
set hidden "disable hidden buffers protection
set ignorecase " Search case-insensitive
set smartcase " case insensitive searching
set incsearch " Enable searching as you type, rather than waiting till you press enter.
set noerrorbells visualbell t_vb= " Disable audible bell because it's annoying.
set background=dark " correct colors for use in tmux
nmap Q <Nop>" 'Q' in normal mode enters Ex mode. You almost never want this.
inoremap ii <Esc>
xnoremap ii <Esc>
call plug#begin('~/.vim/plugged')
Plug 'spf13/vim-autoclose'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'maxbane/vim-asm_ca65'
call plug#end()

augroup filetypedetect
   au BufNewFile,BufRead *.asm,*.s,*.inc set ft=asm_ca65
augroup END


