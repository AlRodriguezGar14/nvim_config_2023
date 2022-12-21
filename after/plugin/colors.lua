-- Setting Gruvbox colorscheme:
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = false,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = true,
  invert_intend_guides = true,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  overrides = {},
})

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")


-- Indentation
vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent guifg=#504945 gui=nocombine]]
vim.opt.listchars:append "space: "
require("indent_blankline").setup {
    space_char_highlight_list = {"IndentBlanklineIndent1"},
    space_char_blankline = " ",
    show_current_context = false,
    show_current_context_start = false,
    char_highlight_list = {"IndentBlanklineIndent"}
}
