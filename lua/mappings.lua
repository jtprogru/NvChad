require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "Run LazyGit", nowait = true })
map("v", ">", ">gv", { desc = "indent" })
map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Toggle TODO list" })
map("n", "<leader>tt", "<cmd>lua require('base46').toggle_theme()<cr>", { desc = "Toggle Light/Dark Theme" })

map("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)

map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)
