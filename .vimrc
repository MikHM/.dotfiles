" vim Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/plugins.vim

colorscheme gruvbox
let g:gruvbox_termcolors=16
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <Esc>                           " Remap ESC to jk
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
set guifont=Hack_Nerd_Font_Mono:h12
set wildmenu					                      " Display all matches when tab complete.
set updatetime=100
set cursorline                              " Enable highlighting of the current line

" ================= Show whitespaces ================
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

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

" ================== Autocompletion ========================
" set colorcolumn=80
set complete+=kspell
set shortmess+=c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ================== Rainbow ===================
"let g:rainbow_active = 1

" ================== Airline ===================
let g:airline_powerline_fonts = 1

" ====================== FZF ===================
map <leader>p :Files<CR>
map <leader>f :GFiles<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"

" Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)" Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

" ================== NERDTreeToggle ===================
map <leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>               " this is the key to jump to the nerdtree window from any other window

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1

" ===================== Closetags =====================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.erb'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.erb'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,erb'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,erb'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" ============ Rainbow_parentheses ================
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
