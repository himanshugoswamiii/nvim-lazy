-- Using snacks.picker now
if true then
    return {}
end
--[[ Keymaps:
      ["shift-down"]  = "preview-page-down",
      ["shift-up"]    = "preview-page-up",
--]]
return {
    "ibhagwan/fzf-lua",
    -- Note: opts must be a table, Lazy.nvim will merge it into require("fzf-lua").setup()
    --      if you need to run extra Lua code then use config = function()
    opts = {
        defaults = {
            file_icons = false,
        },
        winopts = {
            width = 0.9,
            preview = {
                layout = "flex",
                vertical = "down:45%",
                horizontal = "right:50%",
            },
        },
        previewers = {
            builtin = {
                -- With this change, the previewer will not add syntax highlighting to files larger than 100KB
                syntax_limit_b = 1024 * 100, -- 100KB
            },
        },
    },
    keys = {
        -- disabling extra keymaps
        { "<leader>/", false }, -- grep text (root dir) : i'll use <leader> + s + g
        { "<leader><space>", false }, -- Find files : i'll use <leader> + f + f
        { "<leader>,", false }, -- Switch buffer : Use <leader> + f + b
    },
}
