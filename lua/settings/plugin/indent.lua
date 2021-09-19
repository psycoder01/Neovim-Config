vim.opt.listchars = {space = "⋅", eol = "↴"}

require("indent_blankline").setup {
    -- space_char_blankline = " ",
    use_tresitter = true,
    show_current_context = true,
    buftype_exclude = {"terminal", "help"},
    filetype_exclude = {"NvimTree", "dashboard", "nofile", "help"}
}
