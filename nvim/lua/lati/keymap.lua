local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move the highlighted text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When searching for terms, keep cursor in the middle of the editor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- window movement
vim.keymap.set("n", '<leader>wl', '<C-w>v')
vim.keymap.set("n", '<leader>wb', '<C-w>s')
vim.keymap.set("n", '<leader>wc', '<C-w>c')
vim.keymap.set("n", '<leader>l', '<C-w>l')
vim.keymap.set("n", '<leader>h', '<C-w>h')
vim.keymap.set("n", '<leader>j', '<C-w>j')
vim.keymap.set("n", '<leader>k', '<C-w>k')

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without saving it into the buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
