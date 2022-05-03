local map = vim.api.nvim_set_keymap

-- Options
noremap = {noremap = true}
local opts = {noremap = true, silent = true}

-- Nvim Tree
map('n', '<F3>', ':NvimTreeToggle<CR>', noremap)

-- Compe
-- map("i", "<CR>", "compe#confirm('<CR>')", { expr = true })
map('i', '<silent><expr><C-f>', 'compoe#scroll({ delta : +4 })', noremap)
map('i', '<silent><expr><C-b>', 'compoe#scroll({ delta : +4 })', noremap)

-- Telescope
map('n', '<leader>ff', ":Telescope find_files<cr>", noremap)
map('n', '<leader>fw', ":Telescope buffers<cr>", noremap)
map('n', '<leader>ft', ":Telescope live_grep<cr>", noremap)

-- Barbar
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
map('n', '<C-s>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

-- Kommentry
map("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
map("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
map("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
map("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
map("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
map("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

-- LSP commands
map('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl',
    '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
    opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
    opts)
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
map("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

-- Vim Fugitive
map("n", "<leader>gs", ":G<CR>", opts)
map("n", "<leader>gh", ":diffget //2<CR>", opts)
map("n", "<leader>gl", ":diffget //3<CR>", opts)
