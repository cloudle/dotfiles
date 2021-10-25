local M = {}

M.config = {
  ensure_installed = {},
  ignore_install = {},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  }
}

M.setup = function()
  local ok, configs = pcall(require, "nvim-treesitter.configs")
  if not ok then return end

  configs.setup(M.config)
end

return M
