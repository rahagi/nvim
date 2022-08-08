local M = require("literallyme.keymap")

M.nnoremap("<leader>P", ":Lexplore<CR>")
M.nnoremap("<leader><leader>", ":nohlsearch<CR>")
M.nnoremap("B", "^")
M.nnoremap("^", "<nop>")
M.inoremap("<C-v>", '<ESC>"+pa')
M.vnoremap("<C-c>", '"+y')
M.vnoremap("<C-x>", '"+d')
M.nnoremap("n", "nzzzv")
M.nnoremap("N", "Nzzzv")
M.vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
M.vnoremap("<C-k>", ":m '<-2<CR>gv=gv")
M.nnoremap("{", "}")
M.nnoremap("}", "{")

M.nnoremap("<leader>gg", ":Neogit<CR>")
M.nnoremap("<leader>gb", ":Telescope git_branches<CR>")
M.nnoremap("<C-p>", ":Telescope find_files<CR>")
M.nnoremap("<C-b>", ":Telescope buffers<CR>")
M.nnoremap("<C-t>", ":Telescope live_grep<CR>")

vim.cmd([[
function! NetrwMapping()
  nmap <buffer> H u
  nmap <buffer> h -^
  nmap <buffer> l <CR>
  nmap <buffer> P <C-w>z
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
]])
