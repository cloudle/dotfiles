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
