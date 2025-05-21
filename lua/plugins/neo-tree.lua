if true then
    return {}
end
-- Removed neo-tree in favor of snacks.explorer
return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        -- disabling extra keymaps
        { "<leader>e", false }, -- Use <leader>fe
        { "<leader>E", false }, -- Use <leader>fE
    },
}
