local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- CMP saltar entre variables de snippets

map("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
map("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
map("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
map("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)


-- Moverse entre buffers
map('n', '<A-h>', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferLineCycleNext<CR>', opts)
map('n', '<A-c>', '<Cmd>bdelete<CR>', opts)

-- Moverse y crear splits
vim.keymap.set("n", "<A-v>", ":split<cr>", opts)
vim.keymap.set("n", "<A-u>", ":vsplit<cr>", opts)
vim.keymap.set("n", "<C-c>", ":q<cr>", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)
