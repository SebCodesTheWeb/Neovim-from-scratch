local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

--[[Toggleterm shortcuts]]
keymap('n', '<C-g>', ':lua _LAZYGIT_TOGGLE()<CR>', { noremap = true, silent = true })
keymap('n', '<C-n>', ':lua _NODE_TOGGLE()<CR>', { noremap = true, silent = true })
keymap('n', '<D-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
keymap('n', '<D-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
keymap('n', '<D-P>', ':cd /Users/sebastiandelgado/Documents/Mediatool | Telescope find_files<CR>', opts)
keymap('n', '<D-F>', ':cd /Users/sebastiandelgado/Documents/Mediatool | Telescope live_grep<CR>', opts)
keymap('n', '<D-w>', ':bp|bd #<CR>', { noremap = true, silent = true })
keymap('n', '<D-t>', ':tabnew % <CR>', { noremap = true, silent = true })

keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
keymap('n', '<C-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
keymap('n', '<C-P>', ':cd /Users/sebastiandelgado/Documents/Mediatool | Telescope find_files<CR>', opts)
keymap('n', '<C-F>', ':cd /Users/sebastiandelgado/Documents/Mediatool | Telescope live_grep<CR>', opts)
keymap('n', '<C-t>', ':tabnew % <CR>', { noremap = true, silent = true })

keymap('n', '<D-;>', ':Telescope projects<CR>', { noremap = true, silent = true })
keymap('n', '<D-s>', ':w<CR>', { noremap = true, silent = true })
keymap('i', '<D-s>', '<ESC> :w<CR>', { noremap = true, silent = true })
keymap('n', '<D-J>', ':ToggleTermToggleAll<CR>', opts)
keymap('n', '<D-b>', ':NvimTreeToggle<CR>', opts)
keymap('i', '<D-b>', ':NvimTreeToggle<CR>', opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

