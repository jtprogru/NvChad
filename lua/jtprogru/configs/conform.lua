local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    just = { "just" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "gofmt", "goimports" },
    python = { "autoflake", "autopep8", "black", "isort" },
    sh = { "shfmt" },
    terraform = { "terraform_fmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
