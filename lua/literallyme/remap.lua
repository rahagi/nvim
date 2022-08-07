local M = require("literallyme.keymap")

M.nnoremap("<leader>P", ":Ex<CR>")
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
