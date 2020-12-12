" recognize ts,tsx as typescript files
au BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
au BufNewFile,BufRead *.jsx setlocal filetype=javascriptreact


" Format Settings
autocmd FileType javascript,javascriptreact,typescirpt,typescriptreact,html,css,less,sass,scss,vue,markdown,yaml,json nnoremap <leader>f :Prettier<CR>
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
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_b=''
let g:airline_powerline_fonts = 1
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
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Vim-json character concealing fix
let g:vim_json_syntax_conceal = 0

" Closing tag
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascriptreact,typescript,typescriptreact'
