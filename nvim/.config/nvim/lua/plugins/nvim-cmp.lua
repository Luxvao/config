local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  })
})

cmp.setup.cmdline(';', {
  sources = cmp.config.sources({
    { name = "cmdline" }
  })
})

cmp.setup.cmdline('?', {
  sources = {
    { name = "buffer" }
  }
})

cmp.setup.cmdline('/', {
  sources = {
    { name = "buffer" }
  }
})
