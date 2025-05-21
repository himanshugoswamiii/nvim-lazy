if true then
    return {}
end
--[[ 
Code Formatter: 
        Used formatters like clang-format
--]]
return {
    "stevearc/conform.nvim",
    opts = {
        format_on_save = false,
    },
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = { "n", "v" },
            desc = "Format (conform)",
        },
    },
}
