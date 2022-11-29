local lualine = require("lualine")

vim.cmd("colorscheme wal")
vim.cmd("hi Pmenu ctermbg=0")
vim.cmd("hi ColorColumn ctermbg=233 ctermfg=7")
vim.cmd("hi FloatBorder ctermfg=7")
vim.cmd("hi! Search ctermbg=1 ctermfg=7")
vim.cmd("hi! NonText ctermfg=1")
vim.cmd("hi! SpecialKey ctermfg=1")
lualine.setup({
  options = {
    theme = "pywal",
    section_separators = "",
    component_separators = "|",
  },
  sections = {
    lualine_a = {
      {
        "mode",
        fmt = string.lower,
      },
    },
    lualine_c = {
      {
        "filename",
        path = 1,
      },
      {
        "lsp_progress",
        timer = { spinner = 100 },
        spinner_symbols = {
          "⠋",
          "⠙",
          "⠹",
          "⠸",
          "⠼",
          "⠴",
          "⠦",
          "⠧",
          "⠇",
          "⠏",
        },
      },
    },
  },
})
