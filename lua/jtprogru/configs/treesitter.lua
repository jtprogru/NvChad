local utils = require "nvchad.utils"

local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "dockerfile",
    "go",
    "gomod",
    "gosum",
    "hcl",
    "json",
    "lua",
    "python",
    "query",
    "pug",
    "sql",
    "terraform",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },
  indent = {
    enable = true,
  },
}

return M
