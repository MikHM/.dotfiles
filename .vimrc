" vim Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/plugins.vim

colorscheme gruvbox
let g:gruvbox_termcolors=16
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:imap jj <Esc>					                    " Remap ESC to jj
let mapleader = ','				                  " Setting leader key to comma
nmap <leader>si :source ~/.vimrc<CR>
nmap ,ev :tabedit $MYVIMRC<cr>			        " Open vimrc file in new buffer for quick edit
nmap ,ep :tabedit ~/.vim/plugins.vim<cr>    " Open plugins list file in a new tab
nmap ,b :Buffers<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
syntax enable
filetype plugin indent on
let g:rehash256 = 1
" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode
set number                      		        " Show line numbers
set relativenumber
set history=1000                		        " Store lots of :cmdline history
set showcmd                     		        " Show incomplete cmds down the bottom
set showmode                    		        " Show current mode down the bottom
set gcr=a:blinkon0              		        " Disable cursor blink
set visualbell                  		        " No sounds
set autoread                    		        " Reload files changed outside vim
set autowriteall  					                " Automatically write the file when switching buffers
set ruler                                   " show where you are
set encoding=UTF-8
set guifont=Hack_Nerd_Font_Mono:h11
set wildmenu					                      " Display all matches when tab complete.

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Search ===========================
set incsearch       				                " Find the next match as we type the search
set hlsearch        				                " Highlight searches by default
set ignorecase      				                " Ignore case when searching...
set smartcase       				                " ...unless we type a capital
nmap <leader><space> :nohlsearch<cr>			  " Add simple highlight removal after search.

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab                               " Expand tabs to spaces

filetype plugin on
filetype indent on

set list listchars=tab:\ \ ,trail:·		      " Display tabs and trailing spaces visually
set linebreak    				                    " Wrap lines at convenient points

" ================ Split management ======================
" Where to put new splits
set splitright
set splitbelow

" How to navigate btw the splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" ================ UI Improvement ======================
set guioptions-=e						                  " Don't show Gui tabs when fullscreen.
set guioptions-=l						                  " Getting rid of the scroll bar on the left.
set guioptions-=L						                  " Getting rid of the scromm bar when we have a split.
set guioptions-=r						                  " Same for the right side
set guioptions-=R						                  " Same for the right side, split.

" ================ Languages Specific ======================
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ================== Airline ===================
let g:airline_powerline_fonts = 1
