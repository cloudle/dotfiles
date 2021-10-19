hi Keyword ctermfg=204 guifg=#C679DD cterm=italic gui=italic
hi Function ctermfg=39 guifg=#61AFEF cterm=italic gui=italic
hi Type ctermfg=180 guifg=#C679DD cterm=italic gui=italic
hi StorageClass ctermfg=180 guifg=#E06C75 cterm=italic gui=italic
hi Include ctermfg=39 guifg=#61AFEF cterm=italic gui=italic
hi Label ctermfg=170 guifg=#C679DD cterm=italic gui=italic
hi Conditional ctermfg=170 guifg=#C679DD cterm=italic gui=italic
hi Statement ctermfg=170 guifg=#C679DD cterm=italic gui=italic
hi Boolean ctermfg=170 guifg=#C679DD cterm=italic gui=italic
hi Special ctermfg=39 guifg=#C679DD cterm=italic gui=italic
" hi Constant ctermfg=38 guifg=#56B6C2 cterm=italic gui=italic
" hi Operator ctermfg=170 guifg=#C678DD cterm=italic gui=italic
hi Identifier ctermfg=204 guifg=#E06C75 cterm=italic gui=italic
" hi Structure ctermfg=180 guifg=#E5C07B cterm=italic gui=italic

" hi jsFunction ctermfg=170 guifg=#C678DD cterm=italic gui=italic
" hi javaScriptIdentifier ctermfg=204 guifg=#E06C75 cterm=italic gui=italic
" hi javaScriptRequire ctermfg=38 guifg=#56B6C2 cterm=italic gui=italic
hi jsBrackets guifg=#E06C75

hi typescriptReserved ctermfg=170 guifg=#C678DD cterm=italic gui=italic
hi typescriptImport ctermfg=170 guifg=#C678DD cterm=italic gui=italic
hi typescriptObjectLabel guifg=#E06C75
hi typescriptMember guifg=#E06C75
hi typescriptMemberOptionality guifg=#59626F
hi typescriptFuncType guifg=#ABB2BF
hi typescriptImportType ctermfg=170 guifg=#98C379 cterm=italic gui=italic
hi typescriptTypeReference ctermfg=170 guifg=#98C379 cterm=italic gui=italic
hi typescriptAliasDecoration ctermfg=170 guifg=#98C379 cterm=italic gui=italic
hi typescriptInterfaceName ctermfg=170 guifg=#98C379 cterm=italic gui=italic

hi typescriptBraces guifg=#E5C07B
hi typescriptParens guifg=#59626F

" https://github.com/neoclide/coc.nvim/blob/master/plugin/coc.vim#L229-L232
hi CocSymbolVariable guifg=#61AFEF
hi CocSymbolField guifg=#61AFEF
hi CocWarningHighlight guisp=#E5C07B cterm=undercurl gui=undercurl
hi CocErrorHighlight guisp=#E06C75 cterm=undercurl gui=undercurl
hi CocInfoHighlight guisp=#61AFEF cterm=undercurl gui=undercurl
hi CocFadeOut guifg=#59626F

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

