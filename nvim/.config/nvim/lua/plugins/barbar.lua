return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require("barbar").setup {
      icons = {
        button = '✘',
        filetype = { enabled = true },
        separator = {
          left = '▎',
          right = '▎',
        },
        modified = {
          button = '●',
        },
      },
      padding = 1,
      sidebar_filetypes = {
        NvimTree = true,
        Outline = true,
        packer = true,
      },
    }
  end,
  version = "^1.0.0",
}
