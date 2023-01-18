-- Keymap function alias.
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

-- [[ Setup Leader Key ]] --
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ' '

-- [[ Normal Mode ]] --

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize window with arrow keys --
keymap("n", "<C-Up>",    ":resize -2<CR>", opts)
keymap("n", "<C-Down>",  ":resize +2<CR>", opts)
keymap("n", "<C-Left>",  ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer navigation with Shift+h/l --
keymap("n", "<S-l>", ":bnext<CR>", opts)      -- Shift-L for next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts)  -- Shift-H for prev buffer

-- Close current buffer (force) --
keymap("n", "<S-q>", "<cmd>bdelete!<CR>", opts)

-- [[ Insert Mode ]] --

-- [[ Visual Mode ]] --
-- Better visual paste --
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- [[ NvimTree ]] --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- [[ Telescope ]] --
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

