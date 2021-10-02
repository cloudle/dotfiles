source ~/dotfiles/vim/plugin.vim
source ~/dotfiles/vim/plugin-configure.vim
source ~/dotfiles/vim/completion.vim
source ~/dotfiles/vim/theme.vim
"source ~/dotfiles/vim/global-config.vim

let mapleader=","
set mouse=a
set relativenumber

map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFind<CR>

" Remap split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch split layout between horizontal and vertical
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

nmap <leader>1 <Plug>lightline#bufferline#go(1)
nmap <leader>2 <Plug>lightline#bufferline#go(2)
nmap <leader>3 <Plug>lightline#bufferline#go(3)
nmap <leader>4 <Plug>lightline#bufferline#go(4)
nmap <leader>5 <Plug>lightline#bufferline#go(5)
nmap <leader>6 <Plug>lightline#bufferline#go(6)
nmap <leader>7 <Plug>lightline#bufferline#go(7)
nmap <leader>8 <Plug>lightline#bufferline#go(8)
nmap <leader>9 <Plug>lightline#bufferline#go(9)
nmap <leader>0 <Plug>lightline#bufferline#go(10)

" Visual slits
xmap <C-W>gr  <Plug>(Visual-Split-VSResize)
xmap <C-W>gss <Plug>(Visual-Split-VSSplit)
xmap <C-W>gsa <Plug>(Visual-Split-VSSplitAbove)
xmap <C-W>gsb <Plug>(Visual-Split-VSSplitBelow)

" Remap split reszie
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
inoremap <leader>x <ESC>:x<CR>
nnoremap <leader>x :x<CR>

nnoremap <leader>o :Files<CR>
inoremap <leader>o :Files<CR>
nnoremap <leader>i :Rg<CR>
inoremap <leader>i :Rg<CR>
