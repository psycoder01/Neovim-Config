vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
}
require("indent_blankline").setup {
    --space_char_blankline = " ",
    show_current_context = true,
    buftype_exclude = { "terminal", "help" },
    filetype_exclude = { "nvimtree" }
}
