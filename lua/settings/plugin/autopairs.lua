require("nvim-autopairs.completion.cmp").setup({
    map_cr = true,
    map_complete = true,
    auto_select = true,
    insert = false,
    map_char = {all = '(', tex = '{'}
})

require('nvim-autopairs').setup({
    disable_filetype = {"TelescopePrompt", "vim"},
    fast_wrap = {
        chars = {'{', '[', '(', '"', "'"},
        check_comma = true,
        end_key = '$',
        hightlight = 'Search',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        map = '<M-e>',
        offset = 0, -- Offset from pattern match
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', '')
    }
})
