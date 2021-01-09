    " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Theme
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'Yggdroot/indentLine'

  " Searching
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'majutsushi/tagbar'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " Ruby
  Plug 'tpope/vim-endwise'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'

  " CoffeeScript
  Plug 'kchmck/vim-coffee-script'

  " Helpful tools
  Plug 'tpope/vim-commentary'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
