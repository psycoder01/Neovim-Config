local map = vim.api.nvim_set_keymap

--Options
noremap = {noremap = true}
local opts = { noremap = true, silent = true }

--Nvim Tree
map('n','<F3>',':NvimTreeToggle<CR>',noremap)

--Compe
map('i','<silent><expr><C-f>','compoe#scroll({ delta : +4 })',noremap)
map('i','<silent><expr><C-b>','compoe#scroll({ delta : +4 })',noremap)

--Telescope
map('n','<leader>ff',":Telescope find_files<cr>",noremap)
map('n','<leader>fw',":Telescope buffers<cr>",noremap)
map('n','<leader>ft',":Telescope<cr>",noremap)

--Barbar
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-.>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

--Kommentry
map("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
map("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
map("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
map("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
map("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
map("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})
