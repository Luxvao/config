-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    "williamboman/mason.nvim"
  },
  {
    "nvim-treesitter/nvim-treesitter"
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x"
  },
  {
    "neovim/nvim-lspconfig"
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "hrsh7th/cmp-buffer"
  },
  {
    "hrsh7th/cmp-cmdline"
  },
  {
    "hrsh7th/cmp-path"
  },
  {
    "hrsh7th/nvim-cmp"
  },
  {
    "L3MON4D3/LuaSnip",
  },
  {
    "rose-pine/neovim",
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "echasnovski/mini.nvim"
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  }
}

require("lazy").setup(plugins, {})
