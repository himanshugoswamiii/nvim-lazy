return {
    "saghen/blink.cmp",
    opts = {
        keymap = {
            preset = "default",
        },
        completion = {
            keyword = {
                range = "full",
            },
            ghost_text = { enabled = false },
        },
        snippets = {
            -- use luasnip instead of default snippets because default has problems with #include in C
            preset = "luasnip",

            -- This comes from the luasnip extra, if you don't add it, won't be able to
            -- jump forward (snippet_forward in blink.cmp) or backward when the function is given by LSP
            -- The reason could be that LSP functions are not being treated as a snippet
            -- Without this you'll still be able to jump forward and backward in Luasnip snippets
            expand = function(snippet)
                require("luasnip").lsp_expand(snippet)
            end,
            active = function(filter)
                if filter and filter.direction then
                    return require("luasnip").jumpable(filter.direction)
                end
                return require("luasnip").in_snippet()
            end,
            jump = function(direction)
                require("luasnip").jump(direction)
            end,
        },
        sources = {
            min_keyword_length = 2, -- Minimum number of characters in the keyword to trigger the provider
            -- config For all providers
            -- This can be used for for each provider in  as well
            providers = {
                buffer = {
                    score_offset = 100, -- the greater the num, the higher the priority
                },
            },
        },
    },
}
