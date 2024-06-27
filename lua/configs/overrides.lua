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

M.mason = {
  ensure_installed = {
    -- Ansible
    "ansible-language-server",
    "ansible-lint",
    "yamllint",
    -- Bash
    "bash-language-server",
    "shellcheck",
    -- Python
    "autopep8",
    "black",
    "flake8",
    "isort",
    "pylint",
    "pyright",
    -- Lua
    "lua-language-server",
    "luacheck",
    -- C/C++
    "clangd",
    "clang-format",
    -- Docker
    "docker-compose-language-service",
    "dockerfile-language-server",
    -- Go
    "delve",
    "goimports",
    "golangci-lint",
    "gomodifytags",
    "gopls",
    -- Terraform
    "tflint",
    "terraform-ls",
    "tfsec",
    -- Jsonnet
    "jsonnet-language-server",
    "jsonnetfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- gitsigns
M.gitsigns = {
  init = function()
    -- load gitsigns only when a git file is opened
    vim.api.nvim_create_autocmd({ "BufRead" }, {
      group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
      callback = function()
        vim.fn.jobstart({ "git", "-C", vim.loop.cwd(), "rev-parse" }, {
          on_exit = function(_, return_code)
            if return_code == 0 then
              vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
              vim.schedule(function()
                require("lazy").load { plugins = { "gitsigns.nvim" } }
              end)
            end
          end,
        })
      end,
    })
  end,
  opts = {
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    signs = {
      add = { text = "" },
      change = { text = "󰦓" },
      delete = { text = "󰍵" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "󰘓" },
    },
    -- on_attach = function(bufnr)
    --   utils.load_mappings("gitsigns", { buffer = bufnr })
    -- end,
  },
}

M.todo_comments = {
  enable = true,
}

return M
