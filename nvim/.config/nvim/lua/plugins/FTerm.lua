return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      ft         = 'FTerm',                    -- 终端 buffer 的 filetype
      cmd        = os.getenv('SHELL'),         -- 默认 shell（也可以写成 {"zsh"} 或 {"bash"}）
      border     = 'rounded',                  -- 窗口边框样式（可选: 'none', 'single', 'double', 'rounded'）
      auto_close = true,                       -- 命令执行完后自动关闭终端
      hl         = 'NormalFloat',              -- 使用浮动窗口高亮组
      blend      = 10,                         -- 设置透明度（0-100，越大越透明）
      dimensions = {
        height = 0.8,
        width  = 0.8,
        x      = 0.5,
        y      = 0.5,
      },
      clear_env  = false,
      env        = nil,
      on_exit    = nil,
      on_stdout  = nil,
      on_stderr  = nil,

      -- 可以在这里加上快捷键绑定
    })

    -- 快捷键：切换终端
    vim.keymap.set("n", "<leader>tt", require("FTerm").toggle, { desc = "Toggle Terminal" })
    -- 运行当前文件
    vim.keymap.set("n", "<leader>tr", "<cmd>lua require('FTerm').run(vim.fn.expand('%:p'))<CR>", { desc = "Run current file" })
  end
}
