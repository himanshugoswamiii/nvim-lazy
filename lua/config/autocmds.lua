-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- **************  YEXT YANK using OSC  **************************
-- Define the function to pipe yanked content to the osc script

-- local function pipe_yanked_text()
--   local yanked_text = vim.fn.getreg('"') -- get the yanked text from the unnamed register
--
--   local command = string.format("echo %s | osc copy", vim.fn.shellescape(yanked_text))
--   os.execute(command)
-- end
--
-- vim.api.nvim_create_autocmd("TextYankPost", {
--   desc = "Copy text using osc copy",
--   callback = pipe_yanked_text,
-- })

-- ************* SETUP LUA INDENTATION **********************
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function() -- Inline function in Lua, we could have done this using a seperate function as well
    vim.opt.shiftwidth = 2 -- No of spaces for each indentation
    vim.opt.tabstop = 2
  end,
})

-- This disables automatic comments in all filetypes
-- r: Comment on Enter, o : using o or Shift O to insert line , c: Autowrap comments using textwidth
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
  group = vim.api.nvim_create_augroup("General", { clear = true }),
  desc = "Disable New Line Comment",
})
