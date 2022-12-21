 local keymap = vim.keymap


vim.g.mapleader = " "


keymap.set("n", '<leader>pv', vim.cmd.Ex)


-- NertdTree keys
keymap.set("n", '<C-w>', ':NvimTreeToggle<cr>') -- Control + w to open or close nerd NertdTree


-- Navigate between windows
keymap.set("n", '<leader>', '<C-w>w')
keymap.set("", '<C-h>', '<C-w>h')
keymap.set("", '<C-k>', '<C-w>k')
keymap.set("", '<C-j>', '<C-w>j')
keymap.set("", '<C-l>', '<C-w>l')

-- Maintain the search and the half page navigation in the middle
keymap.set("n", 'C-d', '<C-d>zz')
keymap.set("n", 'C-u', '<C-u>zz')
keymap.set("n", 'n', 'nzzzv')
keymap.set("n", 'N', 'Nzzzv')


-- Paster something without changing the buffer copy (amazingly useful tbh). Visual mode.
keymap.set("x", "<leader>p", "\"_dP")


-- Copy to the system clipboard
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- When I remove a character, it"s not copied in the register
keymap.set("n", 'x', '"_x')

-- Spit window horizontally and vertically
keymap.set("n", '<leader>sh', '<C-w>s>')
keymap.set("n", '<leader>sv', '<C-w>v>')

-- Open new tab
keymap.set("n", '<leader>to', ':tabnew<CR>')


