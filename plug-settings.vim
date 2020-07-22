" Format Settings
"let g:prettier#autoformat = 0
"let g:prettier#config#tab_width = 2


" NerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeMinimalUI=1

" NerdCommenter
filetype plugin on

" NerdTree auto placement
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" FZF
" Ignore some folders
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_preview_window = 'right:60%'


" comfortable-motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


" Rainbow-brackets
let g:rainbow_active = 1

" Indent GuideLines
let g:indentLine_color_term = 8
let g:indentLine_char = '|'

" Emmet Default Key Map
let g:user_emmet_leader_key='<C-E>'
