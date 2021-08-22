local map = vim.api.nvim_set_keymap

--Buffer Commands
map('n','xt',':bd<CR>',noremap)
map('n','xx',':bd!<CR>',noremap)
map('i','jk','<ESC>',noremap)
--Selecting all text
map('n','<C-A>','ggVG',noremap)
--redo
map('n','<C-r>',':redo<cr>',noremap)

--Clear search mark
map('n','<Leader><space>',':noh<cr>',noremap)

--Copy to clipboard
map('v','<C-c>','"+y',noremap)
--Copy to clipboard
map('n','<C-p>','"+p',noremap)

--Switching splits
map('n','<C-J>','<C-W>j',noremap)
map('n','<C-K>','<C-W>k',noremap)
map('n','<C-L>','<C-W>l',noremap)
map('n','<C-H>','<C-W>h',noremap)

--Resizing-splits
map('n','<silent> <C-Up>',':resize +10<CR>',noremap)
map('n','<silent> <C-Down>',':resize -10<CR>',noremap)
map('n','<silent> <C-Right>',':vertical resize +10<CR>',noremap)
map('n','<silent> <C-Left>',':vertical resize -10<CR>',noremap)

--autoreloading config file
map('n','nve',':e $MYVIMRC',noremap)
map('n','nvc',':so $MYVIMRC',noremap)

--Home and End of current line
map('n','<Leader>b','<Home>',noremap)
map('n','<Leader>e','<End>',noremap)
