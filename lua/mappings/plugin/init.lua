local map = vim.api.nvim_set_keymap

-- Options
noremap = {noremap = true}
local opts = {noremap = true, silent = true}

-- Nvim Tree
map('n', '<F3>', ':NvimTreeToggle<CR>', noremap)

-- Compe
-- map("i", "<CR>", "compe#confirm('<CR>')", { expr = true })
map('i', '<silent><expr><C-f>', 'compoe#scroll({ delta : +4 })', noremap)
map('i', '<silent><expr><C-d>', 'compoe#scroll({ delta : +4 })', noremap)

-- Telescope
map('n', '<leader>ff', ":Telescope find_files<cr>", noremap)
map('n', '<leader>fw', ":Telescope buffers<cr>", noremap)
map('n', '<leader>ft', ":Telescope live_grep<cr>", noremap)

-- Barbar
-- Move to previous/next
map('n', '<A-,>', ':tabprevious<CR>', opts)
map('n', '<A-.>', ':tabnext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', ':tabmove<CR>', opts)
map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', ':tabn 1<CR>', opts)
map('n', '<A-2>', ':tabn 2<CR>', opts)
map('n', '<A-3>', ':tabn 3<CR>', opts)
map('n', '<A-4>', ':tabn 4<CR>', opts)
map('n', '<A-5>', ':tabn 5<CR>', opts)
map('n', '<A-6>', ':tabn 6<CR>', opts)
map('n', '<A-7>', ':tabn 7<CR>', opts)
map('n', '<A-8>', ':tabn 8<CR>', opts)
map('n', '<A-9>', ':tabn 9<CR>', opts)
map('n', '<A-0>', ':tablast<CR>', opts)

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

-- Git signs
map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>', opts)
map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', opts)
map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', opts)

-- LuaSnip
local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
})
