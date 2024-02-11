local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup{ defaults = { file_ignore_patterns = {"node%_modules/.*"} } }

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set("n", "<leader>fw", builtin.grep_string, {});
