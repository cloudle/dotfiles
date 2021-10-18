syntax on

let g:onedark_hide_endofbuffer=0
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:onedark_color_overrides = { "black": {"gui": "#272c33", "cterm": "0", "cterm16": "0" } }

colorscheme onedark

" Tweaks for file browsing
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

let active_left = [['mode', 'paste'], ['cocstatus', 'currentfunction', 'gitbranch', 'readonly', 'filename', 'modified']]
let active_right = [['lineinfo', 'method', 'spell'], ['fileencoding', 'fileformat']]
let g:lightline = {}
let g:lightline.colorscheme = 'onedark'
let g:lightline.active = { 'left': active_left, 'right': active_right }
let g:lightline.component = { 'lineinfo': ' %3l:%-2v' }
let g:lightline.component_function = { 'gitbranch': 'GitBranchWithIcon' }
let g:lightline.separator = { 'left': '', 'right': '', }
let g:lightline.subseparator = { 'left': '', 'right': '', }
" set showtabline=2

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

