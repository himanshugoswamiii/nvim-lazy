-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local opts = { noremap = true, silent = false }
-- silent=true won't show commands mapped to keybindings

--   GOTO
vim.keymap.set("n", "gh", "^", { noremap = true, silent = false, desc = "Goto line start" })
vim.keymap.set("n", "gl", "$", { noremap = true, silent = false, desc = "Goto line end" })

--  *** DISABLED KEYMAPS ***
vim.keymap.del({ "n", "i", "v" }, "<A-j>") -- Move line Down
vim.keymap.del({ "n", "i", "v" }, "<A-k>") -- Move line Up

-- lazygit
-- vim.keymap.del("n", "<leader>gg")
-- vim.keymap.del("n", "<leader>gG")
-- vim.keymap.del("n", "<leader>gl")
-- vim.keymap.del("n", "<leader>gL")
-- vim.keymap.del("n", "<leader>gf")

-- windows
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>") -- Use <leader>wl

-- buffers
vim.keymap.del("n", "<leader>`")

-- keywordprg : we already have K for it by default in Vim
vim.keymap.del("n", "<leader>K")
