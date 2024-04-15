local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = require "plugins"

require("lazy").setup(plugins, {})

vim.cmd [[colorscheme tokyonight]]
vim.opt.termguicolors = true
vim.wo.relativenumber = true
vim.opt.pumblend = 1

vim.opt.tabstop = 8
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

require "plugins/telescope"
require "plugins/mini"
require "plugins/notify"
require "plugins/whichkey"
require "plugins/lualine"
require "plugins/nvim-cmp"
require "plugins/ibl"

require "keymaps"
