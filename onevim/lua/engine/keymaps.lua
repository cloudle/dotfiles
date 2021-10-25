local M = {}
local generic_opts_any = { noremap = true, silent = true }
local generic_opts = {
  x = { silent = true },
}

M.set_keymaps = function(mode, key, val)
  local opt = generic_opts[mode] and generic_opts[mode] or generic_opts_any
  vim.api.nvim_set_keymap(mode, key, val, opt)
end

M.mode_keys = function(mode, keymaps)
  for k, v in pairs(keymaps) do
    M.set_keymaps(mode, k, v)
  end
end

M.configure = function()
  vim.g.mapleader = ' '

  M.mode_keys('i', {
    -- ['jk'] = '<ESC>',
    -- ['kj'] = '<ESC>',
  })

  M.mode_keys('n', {
    -- Window movement
    ['<C-h>'] = '<C-w>h',
    ['<C-j>'] = '<C-w>j',
    ['<C-k>'] = '<C-w>k',
    ['<C-l>'] = '<C-w>l',

    ["<TAB>"] = ":BufferNext<CR>",
    ["<S-Tab>"] = ":BufferPrevious<CR>",

    ['H'] = 'Hzz',
    ['L'] = 'Lzz',
  }) end

return M
