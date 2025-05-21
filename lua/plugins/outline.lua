-- using trouble.nvim instead
if true then
    return {}
end

return {
    "hedyhli/outline.nvim",
    config = function()
        -- Example mapping to toggle outline
        vim.keymap.set("n", "<leader>co", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
        -- c o : code outline

        require("outline").setup({
            outline_window = {
                width = 25,
            },
            -- Your setup opts here (leave empty to use defaults)
        })
    end,
}
