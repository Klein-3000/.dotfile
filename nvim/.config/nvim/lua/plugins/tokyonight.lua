return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      -- Style options: 'storm' (default), 'moon', 'night', 'day'
      style = "storm",

      -- 启用透明背景（需要终端支持）
      transparent = true,

      -- 终端颜色设置
      terminal_colors = true,

      -- 强调关键字（高亮某些语法元素）
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background for popups and floats
        sidebars = "#2e2e2e",
        floats = "#2e2e2e",
      },

      -- 显示暗色状态栏（适用于 light/dark 模式切换）
      dark_sidebar = true,

      -- 在下列插件中启用 Tokyonight 的高亮
      on_highlights = nil,
    })

    vim.cmd([[colorscheme tokyonight]])
  end,
}
