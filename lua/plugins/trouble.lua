return {
    "folke/trouble.nvim",
    opts = {
        -- global config : this win property will apply to all modes
        win = {
            size = 0.35, -- 40%
        },
        focus = true,

        -- mode specific config
        modes = {
            -- symbols simply extends the lsp_document_symbols
            symbols = {
                format = "{kind_icon} {symbol.name} {symbol.detail:Comment}", -- Read here : https://github.com/folke/trouble.nvim/discussions/561
                focus = true,
            },
            diagnostics = {
                -- this window config will apply only to diagnostics mode, overriding the global config
                win = {
                    size = 0.3,
                },
            },
            lsp = {
                win = { position = "right" },
            },
        },
    },
    keys = {
        {
            "<leader>cs",
            "<cmd>Trouble symbols toggle<cr>",
            desc = "Symbols (Trouble)",
        },
    },
}

-- format options available :
--      symbol.detail : to show the signature of the function
--      symbol.name   : name of function/variables
