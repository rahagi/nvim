local configs = require("nvim-treesitter.configs")
local context = require("treesitter-context")

configs.setup({})
context.setup({
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
