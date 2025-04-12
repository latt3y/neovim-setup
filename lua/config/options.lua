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
opt.ignorecase = true
opt.linebreak = true
opt.spelllang = { "en" }
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current
opt.tabstop = 2 -- Number of spaces tabs count for
opt.wrap = false
opt.backup = false
opt.timeoutlen = 400
opt.swapfile = false
opt.list = true  -- Show some invisible characters (tabs, spaces...
-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10
-- Save undo history
opt.undofile = true
-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'
opt.hlsearch = false
opt.incsearch = true
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank();
  end
});
