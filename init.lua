require("config.lazy")

-- editor config
local o = vim.opt;

o.relativenumber = true
o.guicursor = ""
o.termguicolors = true
o.cursorline = true
o.nu = true

-- keymaps
vim.keymap.set("n", "<space><space>", "<cmd>source %<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
   desc = "Highlight when yanking text",
   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
   callback = function() 
      vim.highlight.on_yank();
   end
});
