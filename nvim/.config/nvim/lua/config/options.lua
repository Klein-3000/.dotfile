local opt = vim.opt

-- number
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 2
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--
opt.wrap = false
opt.list = true
opt.listchars = { tab = ">-", trail = "-"}


-- cursor line and column
opt.cursorline = true
opt.cursorcolumn = false

-- enable mouse
opt.mouse:append("a")

-- system clipboard
opt.clipboard:append("unnamedplus")
opt.clipboard = "unnamedplus"

-- split windows 
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
