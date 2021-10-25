local M = {}

function M:init()
  require("engine.settings"):configure()
  require("engine.plugins"):configure()
  require("engine.keymaps"):configure()
  require("engine.lsp"):setup()
end

return M
