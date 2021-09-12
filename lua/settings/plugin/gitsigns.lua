require('gitsigns').setup {
    current_line_blame = true,
    current_line_blame_delay = 500,
    current_line_blame_position = 'eol',
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 1000
    },
    current_line_blame_formatter_opts = {relative_time = true}
}
