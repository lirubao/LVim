local M = {}

---@param opts? LVimConfig
function M.setup(opts)
  require("lvim.I18n").setup("zh")
  require("lvim.config").setup(opts)
end

return M
