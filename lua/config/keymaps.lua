local keymap = vim.keymap;

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

-- navigate between windows
vim.keymap.set("n", '<leader>l', '<C-w>l')
vim.keymap.set("n", '<leader>h', '<C-w>h')
vim.keymap.set("n", '<leader>j', '<C-w>j')
vim.keymap.set("n", '<leader>k', '<C-w>k')

-- go to previous/next file in buffer 
-- pf - prevous file
vim.keymap.set("n", "<leader>pf", ":bprevious<CR>")
-- nf - next file
vim.keymap.set("n", "<leader>nf", ":bnext<CR>")

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

-- delete without saving it into the buffer
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
