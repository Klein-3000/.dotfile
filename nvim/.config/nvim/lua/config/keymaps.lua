-- ~/.config/nvim/lua/config/keymaps.lua

local key = vim.keymap.set
vim.g.mapleader = " "

-- ========== Insert Mode ==========
key("i", "jj", "<esc>", { desc = "Exit to Normal Mode" })
key('i', '<C-h>', '<Left>',   { silent = true, noremap = true, desc = "Move Left" })
key('i', '<C-j>', '<Down>',   { silent = true, noremap = true, desc = "Move Down" })
key('i', '<C-k>', '<Up>',     { silent = true, noremap = true, desc = "Move Up" })
key('i', '<C-l>', '<Right>',  { silent = true, noremap = true, desc = "Move Right" })

-- ========== Visual Mode ==========
-- key("v", "jj", "<esc>")
key("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
key("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- ========== Normal Mode ==========
key({"n", "v", "o"}, "H", "^", { desc = "Use 'H' as '^'"})
key({"n", "v", "o"}, "L", "$", { desc = "Use 'L' as '$"})
key("n", "<leader>w", ":w<CR>", { desc = "[File] Save" })
key("n", "<leader>qa", ":qa<CR>", { desc = "[File] All quit"})
key("n", "<leader>qq", ":q<CR>", { desc = "[File] Current quit" })
key("n", "<leader>Q", ":qa!<CR>", { desc = "[File]  Force exit the all files"})
key("n", "<leader>te", ":tabe ", { desc = "[Tab] New Tab" })
key("n", "<leader>1", ":!",    { desc = "[Command] Run Shell Command" })
key("n", "<leader>;", ":",      { desc = "[Command] Enter Command Mode" })
key("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "[Lazy] Open Lazy.nvim" })
key("n", "<leader>,", "<CMD>BufferPrevious<CR>", { desc = "[Buffer] Previous"})
key("n", "<leader>.", "<CMD>BufferNext<CR>", { desc = "[Buffer] Next"})
key("n", "<leader>cb", "<CMD>BufferClose<CR>", { desc = "[Buffer] Close"})
key("n", "<C-s>", ":so<CR>",   { desc = "[Config] Source Config" })

-- Split windows
key("n", "<leader>sv", "<C-w>v", { desc = "[Window] Split Vertical" })
key("n", "<leader>sh", "<C-w>s", { desc = "[Window] Split Horizontal" })
key("n", "<leader>ch", ":nohl<CR>", { desc = "[Search] Clear Highlight" })

-- Switch windows
key("n", "<leader>h", "<C-w>h", { desc = "[Window] Focus Left" })
key("n", "<leader>j", "<C-w>j", { desc = "[Window] Focus Down" })
key("n", "<leader>k", "<C-w>k", { desc = "[Window] Focus Up" })
key("n", "<leader>l", "<C-w>l", { desc = "[Window] Focus Right" })

-- Diff file
key("n", "<C-[>", "[c")
key("n", "<C-]>", "]c")
key("n", "<leader>[", "[c", { desc = "[Diff] Jump to previous" })
key("n", "<leader>]", "]c", { desc = "[Diff] Jump to next" })

-- ========== Command Mode ==========
key("c", "jj", "<esc>")

-- ========== barbar.nvim (Buffer Management) ==========
key("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { desc = "[Buffer] Previous" })
key("n", "<A-.>", "<Cmd>BufferNext<CR>",      { desc = "[Buffer] Next" })
key("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", { desc = "[Buffer] Move Left" })
key("n", "<A->>", "<Cmd>BufferMoveNext<CR>",    { desc = "[Buffer] Move Right" })

key("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { desc = "[Buffer] Go to 1" })
key("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { desc = "[Buffer] Go to 2" })
key("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { desc = "[Buffer] Go to 3" })
key("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { desc = "[Buffer] Go to 4" })
key("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { desc = "[Buffer] Go to 5" })
key("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { desc = "[Buffer] Go to 6" })
key("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { desc = "[Buffer] Go to 7" })
key("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { desc = "[Buffer] Go to 8" })
key("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { desc = "[Buffer] Go to 9" })
key("n", "<A-0>", "<Cmd>BufferLast<CR>",  { desc = "[Buffer] Last Buffer" })

key("n", "<A-p>", "<Cmd>BufferPin<CR>",     { desc = "[Buffer] Pin" })
key("n", "<A-c>", "<Cmd>BufferClose<CR>",   { desc = "[Buffer] Close" })
key("n", "<C-p>",   "<Cmd>BufferPick<CR>",  { desc = "[Buffer] Pick" })
key("n", "<C-A-p>", "<Cmd>BufferPickDelete<CR>", { desc = "[Buffer] Pick and Delete" })

-- Sort buffers
key("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", { desc = "[Sort] By Buffer Number" })
key("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>",         { desc = "[Sort] By Name" })
key("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>",    { desc = "[Sort] By Directory" })
key("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>",     { desc = "[Sort] By Language" })
key("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", { desc = "[Sort] By Window Number" })


