_G.MUtils = {}

local M = {}
local ok, autopairs = pcall(require, "nvim-autopairs")
local utils = require("engine.utils")


MUtils.CR = function()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
      return autopairs.esc('<c-y>')
    else
      return autopairs.esc('<c-e>') .. autopairs.autopairs_cr()
    end
  else
    return autopairs.autopairs_cr()
  end
end

MUtils.BS = function()
  if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
    return autopairs.esc('<c-e>') .. autopairs.autopairs_bs()
  else
    return autopairs.autopairs_bs()
  end
end

M.setup = function()
  if not ok then return end

  autopairs.setup()

  -- collaboration with nvim.coq
  utils.mode_keys("i", {
    ["<esc>"] = [[pumvisible() ? "<c-e><esc>" : "<esc>"]],
    ["<c-c>"] = [[pumvisible() ? "<c-e><c-c>" : "<c-c>"]],
    ["<Tab>"] = [[pumvisible() ? "<c-n>" : "<Tab>"]],
    ["<s-Tab>"] = [[pumvisible() ? "<c-p>" : "<bs>"]],
    ["<cr>"] = [[v:lua.MUtils.CR()]],
    ["<bs>"] = [[v:lua.MUtils.BS()]],
  }, { expr = true, noremap = true })
end

return M

