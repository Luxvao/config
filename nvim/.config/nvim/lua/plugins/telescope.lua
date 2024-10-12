local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

require("telescope").setup({
  extensions = {
    file_browser = {
      theme = "ivy",
      mappings = {
        ["i"] = {
          ["<CR>"] = function(prompt_bufnr)
            local entry = action_state.get_selected_entry()

            if entry == nil then
              return
            end

            local path = entry.path or entry.value

            local is_dir = vim.fn.isdirectory(path) == 1

            if is_dir then
              actions.close(prompt_bufnr)

              vim.cmd("Oil " .. path)
            else
              actions.select_default(prompt_bufnr)
            end
          end,
        },
      }
    }
  },
  pickers = {
    buffers = {
      theme = "ivy"
    }
  }
})

require("telescope").load_extension "file_browser"
