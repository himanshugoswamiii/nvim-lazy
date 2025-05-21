if true then
    return {}
end

-- If you want to apply this config remove the above line
return {
    "akinsho/bufferline.nvim",
    opts = {
        options = {
            separator_style = "thick",
            -- style_preset = require("bufferline").style_preset.minimal,
            indicator = {
                icon = "▎", -- this should be omitted if indicator style is not 'icon'
                style = "icon",
            },
        },
    },
}
