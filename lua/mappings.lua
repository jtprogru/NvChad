require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Run LazyGit",  nowait = true })
map("v", ">", ">gv", { desc = "indent" })
