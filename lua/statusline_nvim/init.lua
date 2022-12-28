local M = {}
local config = require("statusline_nvim.config")

M.statusline = function()
	return require("statusline_nvim.statusline").run(config.statusline)
end

M.setup = function()
	vim.opt.statusline = "%!v:lua.require('statusline_nvim').statusline()"
end

return M
