local vim = vim
local formatter = require('formatter')

-- Config Variables
local fileTypes = '*c,*cpp,*css,*html,*js,*json,*jsx,*py,*ts,*tsx'
local indentSize = 4

-- Autoformat on save
local function autoFormat()
    vim.api.nvim_exec([[
        augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *c,*cpp,*css,*html,*js,*json,*jsx,*lua,*py,*ts,*tsx FormatWrite
        augroup END
    ]], true)
end

-- Formatters
-- Lua
local luaFormatter = function()
    return {
        exe = "~/.luarocks/bin/lua-format",
        args = {"--indent-width", indentSize},
        stdin = true
    }
end

-- Prettier
local prettier = function() return
    {exe = vim.lsp.buf.formatting(), stdin = true} end

-- Config
formatter.setup({
    filetype = {
        css = {prettier},
        html = {prettier},
        javascript = {prettier},
        javascriptreact = {prettier},
        lua = {luaFormatter},
        typescript = {prettier},
        typescriptreact = {prettier}
    }
})

autoFormat();
