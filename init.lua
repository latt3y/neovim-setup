require("config.lazy")

-- editor config
local opt = vim.opt;

opt.relativenumber = true
opt.guicursor = ""
opt.termguicolors = true
opt.cursorline = true
opt.nu = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.backup = false
opt.timeoutlen = 400
-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
-- Save undo history
opt.undofile = true
-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'
opt.hlsearch = false
opt.incsearch = true

vim.api.nvim_create_autocmd('TextYankPost', {
   desc = "Highlight when yanking text",
   group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
   callback = function() 
      vim.highlight.on_yank();
   end
});

-- keymaps
vim.keymap.set("n", "<space><space>", "<cmd>source %<CR>")

