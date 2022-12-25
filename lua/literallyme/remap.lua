vim.cmd("let g:BASH_Ctrl_J = 'off'")

local M = require("literallyme.keymap")

M.nnoremap("<leader>P", ":NvimTreeToggle<CR>")
M.nnoremap("<leader><leader>", ":nohlsearch<CR>")
M.nnoremap("B", "^")
M.nnoremap("^", "<nop>")
M.inoremap("<C-v>", '<ESC>"+pa')
M.vnoremap("<C-c>", '"+y')
M.vnoremap("<C-x>", '"+d')
M.nnoremap("n", "nzzzv")
M.nnoremap("N", "Nzzzv")
M.vnoremap("J", ":m '>+1<CR>gv=gv")
M.vnoremap("K", ":m '<-2<CR>gv=gv")
M.nnoremap("{", "}")
M.nnoremap("}", "{")
M.xnoremap("<leader>p", '"_dP')

M.nnoremap("<C-d>", "<C-d>zz")
M.nnoremap("<C-u>", "<C-u>zz")
M.nnoremap("<C-j>", "<C-w><C-j>")
M.nnoremap("<C-k>", "<C-w><C-k>")
M.nnoremap("<C-h>", "<C-w><C-h>")
M.nnoremap("<C-l>", "<C-w><C-l>")
M.nnoremap("<leader>V", "<C-w><C-v>")
M.nnoremap("<leader>S", "<C-w><C-s>")

M.nnoremap("<leader>D", ":DBUI<CR>")
M.inoremap("<C-J>", "copilot#Accept('<CR>')", { silent = true, expr = true })
M.nnoremap("<C-p>", ":Telescope find_files<CR>")
M.nnoremap("<C-b>", ":Telescope buffers<CR>")
M.nnoremap("<C-t>", ":Telescope live_grep<CR>")
M.nnoremap("<leader>gg", ":Neogit<CR>")
M.nnoremap("<leader>gb", ":Telescope git_branches<CR>")
M.nnoremap("<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
M.nnoremap("<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
M.nnoremap("<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>")
M.nnoremap("<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>")
M.nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
for i = 1, 6, 1 do
  M.nnoremap("<leader>h" .. i, ":lua require('harpoon.ui').nav_file(" .. i .. ")<CR>")
end

M.nnoremap("zR", ":lua require('ufo').openAllFolds()<CR>")
M.nnoremap("zM", ":lua require('ufo').closeAllFolds()<CR>")

M.nnoremap("<leader>dd", ":lua require('dapui').toggle()<CR>")
M.nnoremap("<leader>db", ":lua require('dap').toggle_breakpoint()<CR>")
M.nnoremap("<leader>di", ":lua require('dap').step_into()<CR>")
M.nnoremap("<leader>do", ":lua require('dap').step_over()<CR>")
M.nnoremap("<leader>dc", ":lua require('dap').continue()<CR>")
M.nnoremap("<leader>dr", ":lua require('dap').restart()<CR>")

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
