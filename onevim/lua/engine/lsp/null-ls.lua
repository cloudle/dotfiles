local M = {}

M.setup = function()
  require("null-ls").config({

  })

  require("lspconfig")["null-ls"].setup({

  })
end

return M
