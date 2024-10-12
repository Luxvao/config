-- Basic configuration
vim.opt.termguicolors = true
vim.wo.relativenumber = true

-- Tab stuff
vim.opt.tabstop = 8
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Theme
vim.cmd [[colorscheme rose-pine]]

-- Buffer bullshit
vim.cmd [[set nowrap]]
vim.o.scrolloff = 4
vim.o.sidescrolloff = 8
