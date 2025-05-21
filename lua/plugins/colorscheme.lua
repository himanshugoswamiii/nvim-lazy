return {
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        opts = function(_, opts)
            opts.italic_comments = true
            opts.borderless_telescope = false
            opts.hide_fillchars = false
            opts.terminal_colors = false
            opts.theme = {
                colors = {
                    fg = "#F2F2F2", -- Default color is very bright
                },
            }
        end,
    },

    -- Configure LazyVim to load colorscheme
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "cyberdream", -- Change this whenever you want to change your colorscheme which is installed a a plugin
        },
    },

    -- add gruvbox
    -- { "ellisonleao/gruvbox.nvim" },
}
