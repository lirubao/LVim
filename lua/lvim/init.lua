local M = {}

---@param opts? LVimConfig
function M.setup(opts)
  require("lvim.config").setup(opts)
end

return M
