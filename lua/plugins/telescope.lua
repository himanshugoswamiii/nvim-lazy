if true then
    return {}
end
-- If you want to apply this config remove the above line

return {
    "nvim-telescope/telescope.nvim",
    keys = {
        -- disabling extra keymaps
        { "<leader>/", false }, -- grep text (root dir) : i'll use <leader> + s + g
        { "<leader>:", false }, -- command history : i'll use <leader> + s + c
        { "<leader><space>", false }, -- Find files : i'll use <leader> + f + f
        { "<leader>,", false }, -- Switch buffer : Use <leader> + f + b
    },
}
