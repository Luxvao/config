local plugins = {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "echasnovski/mini.nvim",
    version = false,
  },
  {
    "rcarriga/nvim-notify",
  },
  {
    "stevearc/dressing.nvim",
    lazy = true,
  },
  {
    "folke/which-key.nvim",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
      },
    },
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
  {
    "VonHeikemen/lsp-zero.nvim",
  },
  {
    "mrcjkb/rustaceanvim",
    version = '^4',
    ft = { 'rust' }
  },
  {
    "nvim-lualine/lualine.nvim"
  },
  {
    "hrsh7th/nvim-cmp",
    version = false,
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },
  {
    "L3MON4D3/LuaSnip",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
  },
}

return plugins
