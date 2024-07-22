vim.api.nvim_create_autocmd("FileType", {
    pattern = "sh",
    callback = function()
        vim.lsp.start {
            name = "bash-language-server",
            cmd = { "bash-language-server", "start" }
        }
    end,
})
