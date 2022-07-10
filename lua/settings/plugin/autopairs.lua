require('nvim-autopairs').setup({
    disable_filetype = {"TelescopePrompt", "vim"},
    fast_wrap = {
        chars = {'{', '[', '(', '"', "'"},
        check_comma = true,
        end_key = '$',
        hightlight = 'Search',
        keys = 'qwertyuiopzxcvbnmasdfghjkl',
        map = '<M-e>',
        offset = 0,
        pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', '')
    }
})
