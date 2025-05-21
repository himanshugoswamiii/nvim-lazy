if true then
    return {}
end
-- If you want to apply this config remove the above line

return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        local cmp = require("cmp")
        cmp.setup({
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
        })
        opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
            ["<CR>"] = cmp.config.disable, -- Disable <Enter>
            ["<Tab>"] = LazyVim.cmp.confirm({ select = true }),
        })
    end,
}
