local M = {}
local utils = require("engine.utils")

M.configure = function()
  vim.g.mapleader = " "

  utils.mode_keys("i", {
    -- ["jk"] = "<ESC>",
    -- ["kj"] = "<ESC>",
  })

  utils.mode_keys("n", {
    -- Window movement
    ["<C-h>"] = "<C-w>h",
    ["<C-j>"] = "<C-w>j",
    ["<C-k>"] = "<C-w>k",
    ["<C-l>"] = "<C-w>l",

    ["<TAB>"] = ":BufferNext<CR>",
    ["<S-Tab>"] = ":BufferPrevious<CR>",

    ["H"] = "Hzz",
    ["L"] = "Lzz",
  })
end

return M
