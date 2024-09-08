return {
  "hedyhli/outline.nvim",
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>co", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
    -- c o : code outline

    require("outline").setup({
      -- Your setup opts here (leave empty to use defaults)
    })
  end,
}
