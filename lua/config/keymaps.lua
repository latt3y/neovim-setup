local keymap = vim.keymap;

vim.g.mapleader = " "

keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- move the highlighted text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When searching for terms, keep cursor in the middle of the editor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ====  window ====
-- create window horizontally
vim.keymap.set("n", '<leader>wl', '<C-w>v')
-- create window vertically
vim.keymap.set("n", '<leader>wb', '<C-w>s')
-- close current window
vim.keymap.set("n", '<leader>wq', '<C-w>c')
-- close all other windows besides the current one
vim.keymap.set("n", '<leader>wo', '<C-w>o')

-- ==== find files ====
keymap.set("n", "<leader><leader>", "<cmd>source %<CR>")
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files)
keymap.set("n", "<leader>en", function()
  -- en - edit neovim
  -- go to your neovim config files
  require("telescope.builtin").find_files {
    cmd = vim.fn.stdpath("config")
  }
end)
