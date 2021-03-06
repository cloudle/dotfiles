" automatically install plug.vim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-commentary'
  Plug 'mhinz/vim-signify'
  Plug 'jiangmiao/auto-pairs'
  Plug 'easymotion/vim-easymotion'
  Plug 'haya14busa/incsearch.vim'
  Plug 'haya14busa/incsearch-fuzzy.vim'
  Plug 'haya14busa/incsearch-easymotion.vim'

  Plug 'ryanoasis/vim-devicons' " file icons for nerdtree
  Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin' |
      \ Plug 'ryanoasis/vim-devicons' |
      \ Plug 'scrooloose/nerdtree-project-plugin', { 'on': 'NERDTreeToggle' }

  Plug 'sheerun/vim-polyglot'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'editorconfig/editorconfig-vim'

  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'wellle/visual-split.vim'
  Plug 'mhinz/vim-startify'
call plug#end()

let g:coc_config_home = '~/dotfiles/conf/coc-settings.json'
