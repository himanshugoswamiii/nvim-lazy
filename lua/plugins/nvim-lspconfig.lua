-- Reference : https://github.com/tristan957/dotfiles/blob/master/neovim/.config/nvim/lua/tristan957/lsp/config/clangd.lua
return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            clangd = {
                cmd = {
                    "clangd",
                    "--header-insertion=never", -- no automatic header-insertion
                    "--clang-tidy",
                    "--cross-file-rename", -- rename symbols across mulitple files in the project
                    "--all-scopes-completion=false",
                    "--suggest-missing-includes",
                },
                root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".clangd", ".git"),
            },
        },
    },
}
