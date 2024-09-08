-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local opts = { noremap = true, silent = false }
-- silent=true won't show commands mapped to keybindings

--   GOTO
vim.keymap.set("n", "gh", "^", { noremap = true, silent = false, desc = "Goto line start" })
vim.keymap.set("n", "gl", "$", { noremap = true, silent = false, desc = "Goto line end" })

--  *** DISABLED KEYMAPS ***
--
-- lazygit
vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>gl")
vim.keymap.del("n", "<leader>gf")

-- windows
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")
vim.keymap.del("n", "<leader>m")

-- buffers
vim.keymap.del("n", "<leader>`")
