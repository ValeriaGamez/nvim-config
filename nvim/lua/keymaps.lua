local keymap = vim.keymap

vim.g.mapleader = " "

--define common options
local opts = { 
    noremap = true, --non-recursive
    silent = true,  --do not show message
}


--Insert mode--
keymap.set("i", "jk", "<ESC>", opts)


--Normal mode--
keymap.set("n", "<leader>nh", ":nohl<CR>",opts)
keymap.set("n", "x", "_x",opts)
--For inc/dec
--keymap.set("n", "<leader>+", "<C-a>", opts)
--keymap.set("n", "<leader>-", "<C-x>", opts)


--Window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) --cursor to left
keymap.set("n", "<C-j>", "<C-w>j", opts) --cursor downwards
keymap.set("n", "<C-k>", "<C-w>k", opts) --cursor upwards
keymap.set("n", "<C-1>", "<C-w>1", opts) --cursor right

-- Tab navigation
keymap.set("n", "<leader>sn", "<C-w>n", opts) --new window
keymap.set("n", "<leader>sv", "<C-w>v", opts) --vertical split
keymap.set("n", "<leader>sh", "<C-w>s", opts) -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=", opts) --equal split
keymap.set("n", "<leader>sx", ":close<CR>", opts) --close current window //FIX

keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- go to previous


-- keymaps for window max plugin
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- max split

-- for Nvim-Tree
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

-- for telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find text in project
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string cursor is on
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- show active buffers
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- show help tags










keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)







