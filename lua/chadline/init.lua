local default_config = {
	statusline = {
		separator_style = "default", -- default/round/block/arrow
		overriden_modules = nil,
	},
}

local M = {}

M.statusline = function()
	return require("chadline.components").run(M.user_config)
end

M.setup = function(opts)
	M.user_config = vim.tbl_deep_extend("force", {}, default_config, opts or {})
	vim.opt.statusline = "%!v:lua.require('chadline').statusline()"
end

return M
