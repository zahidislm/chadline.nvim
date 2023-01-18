local M = {}
local config = require("chadline.config")

M.statusline = function()
	return require("chadline.components").run(config.statusline)
end

M.setup = function()
	vim.opt.statusline = "%!v:lua.require('chadline').statusline()"
end

return M
