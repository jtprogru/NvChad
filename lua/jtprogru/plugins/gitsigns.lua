return {
  "lewis6991/gitsigns.nvim",
  ft = { "gitcommit", "diff" },
  init = require "jtprogru.configs.gitsigns".init,
  opts = function()
    return require "jtprogru.configs.gitsigns".opts
  end,
  config = function(_, opts)
    dofile(vim.g.base46_cache .. "git")
    require("gitsigns").setup(opts)
  end,
}
