
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pluggins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.config/nvim/plugins.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jk <Esc>                           		              " Remap ESC to jk
let mapleader = ','			                                      " Setting leader key to comma
nmap <leader>sv :source ~/.config/nvim/init.vim<CR>
nmap ,ev :tabedit ~/.config/nvim/init.vim<CR>		              " Open vimrc file in new buffer for quick edit
nmap ,ep :tabedit ~/.config/nvim/plugins.vim<CR>	            " Open vimrc file in new buffer for quick edit
nmap ,b :Buffers<CR>

" ================= Split Opening Commands ====================
nnoremap <leader>h :split<space>
nnoremap <leader>v :vsplit<space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set termguicolors
set background=dark
colorscheme nightfly " tokyonight

" specific options for tokyonight
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set number
set relativenumber
set cursorline                                                " Enable highlighting of the current line
set autoread                    		                          " Reload files changed outside vim
set autowriteall  					                                  " Automatically write the file when switching buffers
set updatetime=100

" ===================== Show whitespaces ======================
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" ==================== Split management =======================
" Where to put new splits
set splitright
set splitbelow

" How to navigate btw the splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" ========================= Search ============================
set incsearch       				                                  " Find the next match as we type the search
set hlsearch        				                                  " Highlight searches by default
set ignorecase      				                                  " Ignore case when searching...
set smartcase       				                                  " ...unless we type a capital
nmap <leader><space> :nohlsearch<cr>			                    " Add simple highlight removal after search.

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ====================== Indentation =========================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab                                                 " Expand tabs to spaces

filetype plugin on
filetype indent on

set list listchars=tab:\ \ ,trail:·		                        " Display tabs and trailing spaces visually
set linebreak    				                                      " Wrap lines at convenient points

" indent/unindent with tab/shift-tab
nmap <Tab> >>
nmap <S-tab> <<


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ================== CoC =======================
source $HOME/.config/nvim/plug-config/coc.vim
nmap <silent> <space>e :CocCommand explorer<CR>

" ================== Tagbar =======================
map <leader>t :TagbarToggle<CR>

" ============ Rainbow_parentheses ================
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ====================== FZF ===================
map <leader>p :Files<CR>
map <leader>f :GFiles<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>T :Tags<CR>
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

" ===================== Closetags =====================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.erb'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.erb'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml,js,erb'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,erb'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a 'valid' region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'