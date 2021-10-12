let mapleader = ","
set scrolloff = 5
set relativenumber
set idearefactormode = keep
set ideajoin
set highlightedyank
set easymotion
set multiple-cursors
set commentary
set surround
set NERDTree

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>

" Nice remap
nnoremap H Hzz
nnoremap L Lzz

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

" Split resize
nnoremap <silent> <C-o> :action StretchSplitToLeft<CR>
nnoremap <silent> <C-p> :action StretchSplitToRight<CR>

" Split
nnoremap <leader>v :split<CR>
nnoremap <leader>s :vsplit<CR>

" File and window management
inoremap <leader>w <ESC>:w<CR>
nnoremap <leader>w :w<CR>
inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

nnoremap <leader>p :action ManageRecentProjects<CR>
inoremap <leader>p <ESC>:action ManageRecentProjects<CR>
nnoremap <leader>o :action GotoFile<CR>
inoremap <leader>o <ESC>:action GotoFile<CR>
nnoremap <leader>i :action GotoSymbol<CR>
inoremap <leader>i <ESC>:action GotoSymbol<CR>
nnoremap <leader>u :action GotoClass<CR>
inoremap <leader>u <ESC>:action GotoClass<CR>
