" Format Settings
autocmd FileType javascript,typescirpt,html,css,less,sass,scss,vue,markdown,yaml,json nnoremap <leader>f :Prettier<CR>
autocmd FileType dart,python nnoremap <leader>f :Neoformat<CR>


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


" Comfortable-motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


" Rainbow-brackets
let g:rainbow_active = 1


" Indent GuideLines
let g:indentLine_color_term = 8
let g:indentLine_char = '|'


" Emmet Default Key Map
let g:user_emmet_leader_key='<C-E>'


" Tmuxline
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}


" Vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Snippets
autocmd BufRead,BufNewFile,BufEnter *.dart UltiSnipsAddFiletypes dart-flutter
" Trigger configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
