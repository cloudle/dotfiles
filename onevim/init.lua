require("engine"):init()

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost *.lua PackerCompile
  augroup end
]],
  false
)

vim.g.onedark_terminal_italics = 2
vim.cmd [[colorscheme onedark]]
