local lualine = require("lualine")
local wal_colors = require("wal-colors")

wal_colors.setup(function(colors)
  return {
    IlluminatedWordRead = { bg = colors.background:lightened(0.175) },
    IlluminatedWordWrite = { bg = colors.background:lightened(0.175) },
    IlluminatedWordText = { bg = colors.background:lightened(0.175) },
    MatchParen = { fg = colors.cursor, bg = colors.red:desaturated(0.125) },
    NeogitDiffDeleteHighlight = { fg = colors.color11, bg = colors.color11:darkened(0.8) },
    NeogitDiffAddHighlight = { fg = colors.color4, bg = colors.color4:darkened(0.8) },
    NeogitHunkHeaderHighlight = { fg = colors.background, bg = colors.foreground },
    NeogitChangeModified = { fg = colors.foreground:darkened(0.125), bg = colors.yellow:darkened(0.25) },
    NeogitChangeAdded = { fg = colors.foreground:darkened(0.125), bg = colors.blue:darkened(0.25) },
    NeogitChangeDeleted = { fg = colors.foreground:darkened(0.125), bg = colors.red:darkened(0.25) },
  }
end, { replace = false })
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

vim.cmd("hi TreesitterContextBottom cterm=none gui=none")
vim.cmd("hi! link TreesitterContextLineNumberBottom TreesitterContext")
vim.cmd("hi! link TreesitterContextLineNumber TreesitterContext")

vim.cmd("hi @lsp.mod.declaration cterm=none gui=none")

vim.cmd("hi! link ColorColumn CursorLine")
