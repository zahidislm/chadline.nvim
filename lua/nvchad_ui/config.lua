-- config

local options = {
  statusline = {
    separator_style = "default", -- default/round/block/arrow
    overriden_modules = nil,
  },

options = require("core.utils").load_override(options, "NvChad/ui")

return options
