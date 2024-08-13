require "nvchad.options"
local HOME = os.getenv "HOME"

-------------------------------------- options ------------------------------------------
-- Color column highlight
vim.opt.colorcolumn = "120"

-- Lines in scroll before end of screen
vim.opt.scrolloff = 10

-- Enable Python3 provider support
vim.g.loaded_python3_provider = 0

-- Dedicated virtual environment special for
-- 'neovim' and 'pynvim' library
-- g.python3_host_prog = "./venv/bin/python3"
vim.g.python3_host_prog = HOME .. "/.cache/nvim/venv/bin/python3"
-- vim.g.loaded_ruby_provider = 1
-- vim.g.loaded_node_provider = 1
-- vim.g.loaded_perl_provider = 1
vim.o.cursorlineopt = "both" -- to enable cursorline!
vim.g.poetv_executables = { "poetry", "pipenv" }
vim.g.poetv_auto_activate = 1
vim.g.poetv_statusline_symbol = "💡"
