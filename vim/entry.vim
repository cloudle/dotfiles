source ~/dotfiles/vim/plugin.vim
source ~/dotfiles/vim/plugin-configure.vim
source ~/dotfiles/vim/completion.vim
source ~/dotfiles/vim/theme.vim
"source ~/dotfiles/vim/global-config.vim

let mapleader=","
set mouse=a
set cursorline
set relativenumber
set noet ci pi sts=0 sw=2 ts=2
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»

map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>

" Nice remap
nnoremap n nzzzv " navigate to definition keep cursor position at center
nnoremap N Nzzzv
nnoremap J mzJ`z " keep cursor on the original position after concat lines
nnoremap H Hzz
nnoremap L Lzz
" Break points for undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
" Moving text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Remap split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch split layout between horizontal and vertical
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" From visual-split
" <C-W>gr <- Resize splits
" <C-W>gss <- Split selected part
" <C-W>gsa <- Split above
" <C-W>gsb <- Split bellow

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap split resize
nnoremap <silent> <C-o> :vertical resize +3<CR>
nnoremap <silent> <C-p> :vertical resize -3<CR>
"nnoremap <silent> <C-]> :resize +3<CR>
"nnoremap <silent> <C-[> :resize -3<CR>

" Open Tab
nnoremap <leader>v :split<CR>
nnoremap <leader>s :vsplit<CR>

" File and window management
inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q <ESC>:q<CR>
inoremap <leader>w <ESC>:w<CR>
nnoremap <leader>w :w<CR>
inoremap <leader>x <ESC>:bd<CR>
nnoremap <leader>x :bd<CR>

nnoremap <leader>o :ProjectFiles<CR>
inoremap <leader>o :ProjectFiles<CR>
nnoremap <leader>i :Rg<CR>
inoremap <leader>i :Rg<CR>

map / <Plug>(incsearch-easymotion-/)
map ? <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)
