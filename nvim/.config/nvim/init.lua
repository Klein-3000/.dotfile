require("config.lazy")
require("config.options")
require("config.keymaps")

-- which-key appearance
local wk = require("which-key")

wk.setup({
    window = {
        border = "rounded",
        position = "bottom_left",
        margin = { 0, 0, 0, 0 },
        padding = { 1, 2 },
    },
})

-- close some filetypes with <q>
local augroup = vim.api.nvim_create_augroup("close_with_q", {})

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    pattern = {
        "PlenaryTestPopup",
        "help",
        "lspinfo",
        "man",
        "notify",
        "qf",
        "query", -- :InspectTree
        "spectre_panel",
        "startup",
        "tsplayground",
        "vim",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})

-- Don't auto commenting new lines
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})

-- ======================================
-- 新增：OSC52 剪贴板配置（支持 SSH 下复制到系统剪贴板）
-- ======================================
if not vim.g.neovide then
    local function paste()
        -- 从默认寄存器 "" 中获取内容，并按换行符分割
        return {
            vim.fn.split(vim.fn.getreg(""), "\n"),
            vim.fn.getregtype(""), -- 同时返回寄存器类型
        }
    end

    vim.g.clipboard = {
        name = 'OSC 52',
        copy = {
            ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
            ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
        },
        paste = {
            ['+'] = paste,
            ['*'] = paste,
        },
    }
end
