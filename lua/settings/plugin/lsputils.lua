local border_chars = {
    TOP_LEFT = '┌',
    TOP_RIGHT = '┐',
    MID_HORIZONTAL = '─',
    MID_VERTICAL = '│',
    BOTTOM_LEFT = '└',
    BOTTOM_RIGHT = '┘'
}

local function select_callback(index, line)
    -- function job here
end

local function close_callback(index, line)
    -- function job here
end

local opts = {
    height = 40,
    width = 120,
    mode = 'editor',
    close_on_bufleave = true,
    data = {
        cmd = 'command here',
        cwd = 'directory from which this command should be launched.'
    },
    keymaps = {
        i = {['<Cr>'] = function(popup) popup:close(select_callback) end},
        n = {['<Cr>'] = function(popup) popup:close(select_callback) end}
    },
    callbacks = {
        select = select_callback, -- automatically calls it when selection changes
        close = close_callback -- automatically calls it when window closes.
    },
    list = {
        border = true,
        numbering = true,
        title = 'MyTitle',
        border_chars = border_chars,
        highlight = 'Normal',
        selection_highlight = 'Visual',
        matching_highlight = 'Identifier'
    },
    preview = {
        type = 'terminal',
        border = true,
        numbering = true,
        title = 'MyTitle',
        border_chars = border_chars,
        highlight = 'Normal',
        preview_highlight = 'Visual'
    },
    prompt = {
        border = true,
        numbering = true,
        title = 'MyTitle',
        border_chars = border_chars,
        highlight = 'Normal',
        prompt_highlight = 'Normal'
    },
    sorter = require('popfix.sorter').new_fzy_native_sorter(),
    fuzzyEngine = require('popfix.fuzzy_engine').new_SingleExecutionEngine()
}

local popup = require('popfix'):new(opts)

vim.lsp.handlers['textDocument/codeAction'] =
    require('lsputil.codeAction').code_action_handler
vim.lsp.handlers['textDocument/references'] =
    require('lsputil.locations').references_handler
vim.lsp.handlers['textDocument/definition'] =
    require('lsputil.locations').definition_handler
vim.lsp.handlers['textDocument/declaration'] =
    require('lsputil.locations').declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] =
    require('lsputil.locations').typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] =
    require('lsputil.locations').implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] =
    require('lsputil.symbols').document_handler
vim.lsp.handlers['workspace/symbol'] =
    require('lsputil.symbols').workspace_handlero
