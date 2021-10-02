let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
   \ 'Modified'  :'✹',
   \ 'Staged'    :'✚',
   \ 'Untracked' :'✗',
   \ 'Renamed'   :'➜',
   \ 'Unmerged'  :'═',
   \ 'Deleted'   :'✖',
   \ 'Dirty'     :'✭',
   \ 'Ignored'   :'☒',
   \ 'Clean'     :'✔︎',
   \ 'Unknown'   :'?',
   \ }

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
