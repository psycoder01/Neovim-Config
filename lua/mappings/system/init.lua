local map = vim.api.nvim_set_keymap

-- Options
noremap = {noremap = true}

-- Buffer Commands
map('n', 'xt', ':bd<CR>', noremap)
map('n', 'xx', ':bd!<CR>', noremap)
map('i', 'jk', '<ESC>', noremap)

-- Selecting all text
map('n', '<C-A>', 'ggVG', noremap)
-- redo
map('n', '<C-r>', ':redo<cr>', noremap)

-- Clear search mark
map('n', '<Leader><space>', ':noh<cr>', noremap)

-- Copy to clipboard
map('v', '<C-y>', '"+y', noremap)
-- Copy to clipboard
map('n', '<C-p>', '"+p', noremap)

-- Switching splits
map('n', '<C-J>', '<C-W>j', noremap)
map('n', '<C-K>', '<C-W>k', noremap)
map('n', '<C-L>', '<C-W>l', noremap)
map('n', '<C-H>', '<C-W>h', noremap)

-- Resizing-splits
map('n', '<M-Up>', ':resize +10<CR>', noremap)
map('n', '<M-Down>', ':resize -10<CR>', noremap)
map('n', '<M-Right>', ':vertical resize +10<CR>', noremap)
map('n', '<M-Left>', ':vertical resize -10<CR>', noremap)

-- autoreloading config file
map('n', 'nve', ':e $MYVIMRC', noremap)
map('n', 'nvc', ':so $MYVIMRC', noremap)

-- Home and End of current line
map('n', '<Leader>b', '<Home>', noremap)
map('n', '<Leader>e', '<End>', noremap)
