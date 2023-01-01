vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

----------------------
-- General Keymaps
----------------------

-- open terminal in horizontal split
keymap.set("n", "<leader>i", "<C-w>s<CR>:terminal<CR>")

-- move blocks of text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- cursor settings
keymap.set("n", "J", "mzJ`z") -- keep cursor in place when appending next line
keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in the middle when jumping by page
keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in the middle when jumping by page
keymap.set("n", "n", "nzzzv")  -- keep search terms in the middle 
keymap.set("n", "N", "Nzzzv")  -- keep search terms in the middle

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- clipboard settings
keymap.set("x", "<leader>p", [["_dP]]) -- paste over sithout losing current register
keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- yank to system clipboard
keymap.set("n", "<leader>Y", [["+Y]]) -- yank to system clipboard
keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- delete to void register
keymap.set("n", "x", '"_x') -- delete single character without copying into register

-- replace all instances of the current word the cursor is on
keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
