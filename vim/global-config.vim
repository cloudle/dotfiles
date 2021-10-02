let mapleader=","

set mouse=a " Enable mouse interactions
set relativenumber " User relative line number in Gutter
set splitbelow splitright

" Remap split navigation left | down | up | right
nnoremap <C-j> <C-w>h
nnoremap <C-k> <C-w>j
nnoremap <C-i> <C-w>k
nnoremap <C-l> <C-w>l

" Remap split reszie
nnoremap <silent> <C-o> :vertical resize +3<CR>
nnoremap <silent> <C-p> :vertical resize -3<CR>
nnoremap <silent> <C-]> :resize +3<CR>
nnoremap <silent> <C-[> :resize -3<CR>

" Open Tab
nnoremap <leader>s :split<CR>
nnoremap <leader>h :vsplit<CR>

" Switch split layout between horizontal and vertical
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" File and window management
inoremap <leader>w <ESC>:w<CR>
nnoremap <leader>w :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

inoremap <leader>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>

nnoremap <silent><nowait> <space>u :bp<CR>
nnoremap <silent><nowait> <space>o :bn<CR>
nnoremap <silent><nowait> <space>i :bd<CR>

