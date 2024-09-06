return {
  "nvim-treesitter/nvim-treesitter",
  opts_extend = {}, -- Do not extend the treesitter list, instead overwrite it
  opts = {
    ensure_installed = {
      "html",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "yaml",
    },
  },
}
