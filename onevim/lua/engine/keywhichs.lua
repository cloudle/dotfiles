local M = {}

local config = {
  setup = {
    icons = {
      breadcrumb = "»",
      separator = "",
      group = " ",
    },
  },
  nopts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
  vopts = {
    mode = "v",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  },
  nmaps = {
    ["w"] = { "<cmd>w!<cr>", "save" },
    ["q"] = { "<cmd>q!<cr>", "quit" },
    ["/"] = { "<cmd>lua require('comment').toggle()<cr>", "comment" },
    ["c"] = { "<cmd>BufferClose!<CR>", "Close Buffer" },
    ["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
    T = {
      h = { "<cmd>TSHighlightCapturesUnderCursor<CR>", "Hi info" }
    },
  },
  vmaps = {

  },
}

M.setup = function()
  local wk = require("which-key")

  wk.setup(config.setup)
  wk.register(config.nmaps, config.nopts)
  -- wk.register(config.vmaps, config.vopts)
end

return M
