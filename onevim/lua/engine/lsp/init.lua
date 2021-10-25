local M = {}

vim.g.coq_settings = {
  auto_start = "shut-up",
  keymap = { recommended = false },
  clients = {
    tabnine = { enabled = true }
  },
}

M.setup = function()
  local installer = require("nvim-lsp-installer")
  local coq = require("coq")

  installer.on_server_ready(function(server)
    local capabilities = coq.lsp_ensure_capabilities()
    server:setup(capabilities)
  end)
end

return M

