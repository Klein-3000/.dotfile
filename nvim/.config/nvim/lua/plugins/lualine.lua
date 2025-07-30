return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = {
      normal = "#fffade",
      insert = "#f98e71",
      command = "#c3fcf1",
      black  = "#080808",
      white  = "#c6c6c6",
      grey   = "#303030",
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.normal },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white, bg = nil }, -- 不设置背景色
      },

      insert = {
        a = { fg = colors.black, bg = colors.insert }
      },

      command = {
        a = { fg = colors.black, bg = colors.command }
      },

      replace = {
        a = { fg = colors.black, bg = colors.normal } -- 可以复用 normal 的颜色
      },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', -- 居中对齐占位符
        },
        lualine_x = { 'encoding' }, -- 显示编码格式，如 UTF-8
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}

