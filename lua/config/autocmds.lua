-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- ************* SETUP LUA INDENTATION **********************
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function() -- Inline function in Lua, we could have done this using a seperate function as well
    vim.opt.shiftwidth = 2 -- No of spaces for each indentation
    vim.opt.tabstop = 2
  end,
})
