local cmd = vim.api.nvim_command

local setupGitSigns = function()
    require('gitsigns').setup {
        current_line_blame = true,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 1000
        },
        current_line_blame_formatter_opts = {relative_time = true},
    }
end

local changeBlameTextColor = function()
    cmd [[ autocmd Colorscheme * hi GitSignsCurrentLineBlame guifg=grey ]]
end

setupGitSigns()
changeBlameTextColor()
