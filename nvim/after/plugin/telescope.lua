local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup{ defaults = { file_ignore_patterns = {"node%_modules/.*"} } }

vim.keymap.set("n", "<leader>pf", builin.find_files, {})
vim.keymap.set("n", "<C-v>", builin.git_files, {})
vim.keymap.set("n", "<leader>ps", function() 
    builtin.grep_string({ string = vim.fn.input("Grep > ") });
end)
