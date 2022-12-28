local M = {}
local config = require "nvchad_ui.config"

M.statusline = function()
  return require("nvchad_ui.statusline").run(config.statusline)
end

M.setup = function()
  vim.opt.statusline = "%!v:lua.require('nvchad_ui').statusline()"
end

return M
