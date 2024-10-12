-- Setup leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope
vim.keymap.set("n", "<space>ff", ":Telescope file_browser path=%:p:h hidden=true no_ignore=true select_buffer=true<CR>")
vim.keymap.set("n", "<space>fb", ":Telescope buffers<CR>")

-- Oil
vim.keymap.set("n", "<space>e", ":Oil<CR>")

-- Buffer management
vim.keymap.set("n", "<space>bk", ":bd<CR>")

-- Split management
vim.keymap.set("n", "<space>wv", ":vsp<CR>")
vim.keymap.set("n", "<space>ws", ":sp<CR>")
vim.keymap.set("n", "<space>wc", ":q<CR>")

-- Split navigation
vim.keymap.set("n", "<space>wh", ":wincmd h<CR>")
vim.keymap.set("n", "<space>wj", ":wincmd j<CR>")
vim.keymap.set("n", "<space>wk", ":wincmd k<CR>")
vim.keymap.set("n", "<space>wl", ":wincmd l<CR>")
