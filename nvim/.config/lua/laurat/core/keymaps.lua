vim.g.mapleader = " " 

local keymap = vim.keymap

-- general keymaps

-- in INSERT mode hit j k to exit to view mode 
keymap.set("i", "jk", "<ESC>")

-- hit leader (<space>) and follow up with nh to clear the search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- when deleting a char with x dont save a copy
keymap.set("n", "x", '"_x')

-- increment number with leader (space) and +
keymap.set("n", "<leader>+", "<C-a>")
-- decrement number with leader (space) and -
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window verticaly
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontaly
keymap.set("n", "<leader>se", "<C-w>=") -- split window equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab 

