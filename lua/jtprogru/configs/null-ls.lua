local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  -- Python
  formatting.black,
  formatting.isort.with(require "jtprogru.configs.isort"),
  formatting.autopep8,
  diagnostics.flake8.with(require "jtprogru.configs.flake8"),
  diagnostics.pylint.with(require "jtprogru.configs.pylint"),

  -- Lua
  formatting.stylua,
  diagnostics.luacheck,

  -- Golang
  formatting.gofmt,
  diagnostics.golangci_lint,

  -- Terraform
  formatting.terraform_fmt,
  formatting.hclfmt,
  diagnostics.tfsec,
  diagnostics.terraform_validate,

  -- C/C++
  formatting.clang_format,
  diagnostics.cpplint,
  diagnostics.cppcheck,

  -- Bash
  -- formatting.shellharden,
  -- diagnostics.shellcheck,

  -- Markdonw
  -- formatting.remark,

  -- Ansible
  formatting.yamlfmt,
  diagnostics.ansiblelint,
  diagnostics.yamllint,

  -- Linter for Git commit message.
  diagnostics.gitlint,

  -- LaTeX
  diagnostics.chktex,

  -- Dockerfile
  diagnostics.hadolint,
}

null_ls.setup {
  debug = true,
  sources = sources,
  autostart = true,
}
