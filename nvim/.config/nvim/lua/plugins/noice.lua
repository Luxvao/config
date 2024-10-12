require("noice").setup({
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.utils.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    }
  },
  cmdline = {
    enabled = true,
    view = "cmdline",
    format = {
      cmdline = { pattern = "^:", icon = ":", lang = "vim" },
    }
  }
})
