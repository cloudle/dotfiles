let mapleader = ","
set scrolloff = 5
set relativenumber
set idearefactormode = keep
set ideajoin
set surround
set NERDTree

" Nice remap
nnoremap n nzzzv " nagivate to definition keep cursor position at center
nnoremap N Nzzzv
nnoremap J mzJ`z " keep cursor on the original position after concat lines
nnoremap H Hzz
nnoremap L Lzz
" Moving text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==i
inoremap <C-k> <esc>:m .-2<CR>==i
nnoremap <leader> :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" Remap split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split
nnoremap <leader>v :split<CR>
nnoremap <leader>s :vsplit<CR>
