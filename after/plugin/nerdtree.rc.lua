require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "<C-z> ", action = ":NERDTreeToggle" },
      },
    },
  },
  renderer = {
      icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
    },
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
