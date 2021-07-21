" recognize ts,tsx as typescript files
au BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
au BufNewFile,BufRead *.jsx setlocal filetype=javascriptreact


" Prettier
let g:prettier#config#single_quote = 'false'
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let b:prettier_ft_default_args = {
  \ 'parser': 'php',
  \ }


" ColorScheme
let g:gruvbox_italic=1
colorscheme gruvbox


" Formatter Settings
map <silent><leader>fc :FormatCode<CR>


" NerdCommenter
filetype plugin on


" FZF
" Ignore some folders
let $FZF_DEFAULT_OPTS="--bind ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_preview_window = 'right:60%'
let $BAT_THEME = 'gruvbox-dark'


" Menu Suggestions
set wildmenu


" Rainbow-brackets
let g:rainbow_active = 1


" Indent GuideLines
set conceallevel=1
let g:indentLine_conceallevel = 1
let g:indentLine_color_term = 8
let g:indentLine_char = '|'


" Tmuxline
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F']}


" Vim-airline
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_b=''
let g:airline_theme='gruvbox'


" Snippets
autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter
let g:user_emmet_settings = {
\ 'typescript' : {
\     'extends' : 'jsx',
\ },
\}

" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Vim-json character concealing fix
let g:vim_json_syntax_conceal = 0


" Closing tag
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact'
let g:closetag_regions = {
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ 'typescript': 'jsxRegion,tsxRegion',
    \ 'javascript': 'jsxRegion',
    \ }


" Gitgutter
set updatetime=100

" Git blamer
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0
let g:blamer_relative_time = 1


" Vim airline
function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode'])
    let g:airline_section_b = airline#section#create(['branch',' ','hunks'])
    let g:airline_section_z = airline#section#create(['%l',':%c','/%L'])
endfunction
autocmd VimEnter * call AirlineInit()



" COC
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')



" Vista Window
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
  \ 'javascriptreact': 'coc',
  \ 'typescriptreact': 'coc',
  \ }
let g:vista_fzf_preview = 1

"let g:vista_fzf_preview = ['right:80%']
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
