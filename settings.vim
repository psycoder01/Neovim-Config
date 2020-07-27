" set-number
set number relativenumber
set nu rnu


" color-theme
set background=dark
colorscheme gruvbox


" tab setting
" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab


" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile


" Minimum lines to keep above and below cursor when scrolling
set scrolloff=4


" Use mouse to select and resize windows, etc.
" set mouse=nic  " Enable mouse in several mode
" set mousemodel=popup  " Set the behaviour of mouse


" Ignore certain files and folders when globbing
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz
set wildignore+=/node_modules


" Completion behaviour
set completeopt+=noinsert  " Auto select the first completion entry
set completeopt+=menuone  " Show menu even if there is only one item
"set completeopt-=preview  " Disable the preview window


" Settings for popup menu
set pumheight=10  " Maximum number of items to show in popup menu


" Integrate-terminal
" open new split panes to right and below
set splitbelow
set splitright

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <M-t> :call OpenTerminal()<CR>


" NerdTree-brackets-concealing
let g:rainbow_conf={
            \'separately':{
            \'nerdtree':0,
            \}
            \}


" flutter-log-openbottom
function! OpenFlutterLog()
	:botright split output:///flutter-dev
	resize 20
endfunction


" show-documentation
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
