vim.g.mapleader = " "

vim.opt.mouse = "a"

vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.colorcolumn = "+1"
vim.opt.cursorline = true

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.lbr = true
vim.opt.tw = 100

vim.opt.showcmd = true
vim.opt.wildmenu = true
vim.opt.lazyredraw = true

vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = "cp -r"

vim.g.copilot_no_tab_map = true
-- so it doesn't fuck up dap repl
vim.api.nvim_set_var("copilot_filetypes", {
  ["dap-repl"] = false,
  ["dapui-watches"] = false,
  ["dapui-console"] = false,
  ["TelescopePrompt"] = false,
})

vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.opt.list = true

vim.opt.listchars = { eol = "↵", tab = "› ", trail = "·", nbsp = "␣" }
