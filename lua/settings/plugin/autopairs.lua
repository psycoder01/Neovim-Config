require("nvim-autopairs.completion.cmp").setup({
    auto_select = true, -- automatically select the first item
    map_complete = true, -- it will auto insert `(` after select function or method item
    map_cr = true --  map <CR> on insert mode
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
