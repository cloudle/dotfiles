syntax on
colorscheme onedark

" Tweaks for file browsing
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

let g:onedark_hide_endofbuffer=0
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:onedark_color_overrides = {
	\ "black": {"gui": "#272c33", "cterm": "0", "cterm16": "0" }
	\}

let g:lightline = {
  \   'colorscheme': 'onedark',
  \   'separator': { 'left': '', 'right': '', },
  \   'subseparator': { 'left': '', 'right': '', },
  \   'active': {
  \     'left': [ [ 'left_end', 'mode', 'paste' ],
  \               [ 'cocstatus', 'currentfunction', 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \     'right': [ ['lineinfo',  'method', 'spell', 'method', 'right_end' ],
  \                [  'fileencoding', 'fileformat', 'filetype', 'cocstatus'] ],
  \   },
  \   'tabline': {
  \     'left': [ ['buffers'] ],
  \     'right': [ ['close'] ]
  \   },
  \   'component': {
  \     'left_end': '%#LightlineLeft_active_0_1#%#LightlineLeft_active_0#',
  \     'right_end': '%#LightlineRight_active_0_1#%#LightlineRight_active_0#',
  \     'lineinfo': ' %3l:%-2v',
  \   },
  \   'component_visible_condition': { 'left_end': '0', 'right_end': '0', },
  \   'component_expand': {
  \     'buffers': 'lightline#bufferline#buffers',
  \   },
  \   'component_type': {
  \     'buffers': 'tabsel'
  \   },
  \   'component_function': {
  \     'gitbranch': 'GitBranchWithIcon',
  \   }
  \ }

set showtabline=2
let g:lightline.component_raw = { 'buffers': 1, 'left_end': 1, 'right_end': 1 }
let g:lightline#bufferline#enable_devicons=1
let g:lightline#bufferline#enable_nerdfont=1
let g:lightline#bufferline#unicode_symbols=1
let g:lightline#bufferline#show_number=2
let g:lightline#bufferline#clickable=1
let g:lightline#bufferline#number_map = {
\ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

function! GitBranchWithIcon()
	return ' ' . fugitive#head()
endfunction

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
