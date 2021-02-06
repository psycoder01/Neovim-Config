" recognize ts,tsx as typescript files
au BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
au BufNewFile,BufRead *.jsx setlocal filetype=javascriptreact

" Gruvbox
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox


" Formatter Settings
map <leader>f :FormatCode<CR>
augroup autoformat_settings
  autocmd FileType c,cpp AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType html,css,sass,scss,less,json,javascript,javascriptreact,typescript,typescriptreact AutoFormatBuffer prettier
  autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
augroup END

" NerdTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrows = 1
let NERDTreeMinimalUI=1
" NerdTree-brackets-concealing
let g:rainbow_conf={
            \'separately':{
            \'nerdtree':0,
            \}
            \}
" NerdTree on every tab
autocmd BufWinEnter * silent NERDTreeMirror
autocmd StdinReadPre * let s:std_in=1
" NerdTree on vim enter
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif | wincmd p
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Exit window if NerdTree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Show hidden files by default
let NERDTreeShowHidden = 1
" Check if current window is NerdTree
fun! s:IsCurrentWindowNERDTree()
  return exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) == winnr()
endfun
fun! s:NERDTreeTrick()
  if s:IsCurrentWindowNERDTree()
    wincmd p    
  endif
endfun
map <f3> :NERDTreeToggle<CR> :call <SID>NERDTreeTrick()<CR>
autocmd TabLeave * call s:NERDTreeTrick()

" NerdCommenter
filetype plugin on

" FZF
" Ignore some folders
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_preview_window = 'right:60%'
command! -bang Windows call fzf#vim#windows({'options': ['--query', '!NERD ']}, <bang>0)

" Menu Suggestions
set wildmenu


" Rainbow-brackets
let g:rainbow_active = 1


" Indent GuideLines
set conceallevel=1
let g:indentLine_conceallevel = 1
let g:indentLine_color_term = 8
let g:indentLine_char = '|'
let g:indentLine_fileTypeExclude = ["nerdtree"]


" Tmuxline
let g:airline#extensions#tmuxline#enabled = 1
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F']}


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
