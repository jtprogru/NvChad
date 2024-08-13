local highlights = require "jtprogru.configs.highlights"

local M = {}

M.base46 = {
  theme = "doomchad",

  statusline = {
    theme = "vscode_colored",
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          "go",
          "yaml",
          "python",
          "lua",
          "sumneko_lua",
          "helm_ls",
          "terraform",
          "hcl",
        },
      },
      timeout_ms = 1000, -- default format timeout
    },
    -- enable servers that you already have installed without mason
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}

return M
