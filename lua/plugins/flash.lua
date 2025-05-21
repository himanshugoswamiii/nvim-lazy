return {
    "folke/flash.nvim",

    -- if you wanna change the chars keymap (f, F, t, T), you have to unmap then from the chars feature
    opts = {
        modes = {
            char = {
                enabled = true,
                jump_labels = true,
                keys = {}, -- unmapping done
            },
        },
    },

    keys = function()
        return {
            {
                "f",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "F",
                mode = { "n", "x", "o" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
        }
    end,
}
