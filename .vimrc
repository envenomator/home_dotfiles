set nocompatible " switch to vim functionality
syntax on " Turn on syntax highlighting
set shortmess+=I " Disable the default Vim startup message.
set nowrap
set number " Show line numbers.
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab  "use spaces in stead of tab characters
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
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

augroup filetypedetect
   au BufNewFile,BufRead *.asm,*.s,*.inc set ft=asm_ca65
augroup END

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

augroup python
  autocmd!
  autocmd FileType python setlocal softtabstop=4
augroup END
