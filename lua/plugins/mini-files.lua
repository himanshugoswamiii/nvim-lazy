return {
  -- Use g? to show help
  "echasnovski/mini.files",
  version = false,
  opts = {
    windows = {
      preview = false, -- default is false
      width_preview = 30,
    },
    options = {
      -- To get trash directory, run :echo stdpath('data')
      -- Your files/directories will be available in mini.files directory in there
      permanent_delete = false,
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (Directory of Current File)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
  },

  config = function(_, opts)
    require("mini.files").setup(opts)
  end,
}
