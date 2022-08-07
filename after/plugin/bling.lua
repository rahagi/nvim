vim.cmd([[
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tmuxline#enabled = 0
]])
vim.g.airline_powerline_fonts = 1
vim.g.airline_symbols.linenr = ':'
vim.g.airline_symbols.whitespace = ''
vim.g.airline_right_sep = ''
vim.g.airline_theme = 'base16_ashes'
vim.g.airline_theme = 'wal'

vim.cmd("colorscheme wal")
