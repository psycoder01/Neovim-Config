local map = vim.api.nvim_set_keymap

--Options
noremap = {noremap = true}

--Nvim Tree
map('n','<F3>',':NvimTreeToggle<CR>',noremap)

--Compe
map('i','<silent><expr><C-f>','compoe#scroll({ delta : +4 })',noremap)
map('i','<silent><expr><C-b>','compoe#scroll({ delta : +4 })',noremap)

--Telescope
map('i','<Leader>ff',"<cmd>lua require('telescope.builtin').find_files()",noremap)
--nnoremap nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
