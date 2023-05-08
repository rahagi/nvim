local configs = require("nvim-treesitter.configs")
local context = require("treesitter-context")

local disable = function(lang, bufnr)
  return lang == "typescript" and vim.api.nvim_buf_line_count(bufnr) >= 2000
end

configs.setup({
  indent = {
    enable = true,
    disable = disable,
  },
  highlight = {
    enable = true,
    disable = disable,
    additional_vim_regex_highlighting = false,
  },
})
context.setup({
  enable = true,
  max_lines = 2,
  patterns = {
    default = {
      "function",
      "method",
      "for",
      "while",
      "if",
      "else",
      "try",
      "except",
      "finally",
      "with",
      "match",
    },
  },
})

vim.cmd("hi def TreesitterContext ctermbg=233")
