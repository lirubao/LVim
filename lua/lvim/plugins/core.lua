require("lvim.config").init()

return {
  { "folke/lazy.nvim", version = "*" },
  { "lirubao/LVim", priority = 10000, lazy = false, config = true, version = "*" },
}
