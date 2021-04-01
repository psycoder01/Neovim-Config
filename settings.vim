" set-number
set number relativenumber
set nu rnu
set nowrap sidescroll=1 listchars=extends:>,precedes:<
set termguicolors

" tab setting
" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile


" Minimum lines to keep above and below cursor when scrolling
set scrolloff=4


" Ignore certain files and folders when globbing
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz
set wildignore+=/node_modules


" Completion behaviour
set completeopt+=menuone  " Show menu even if there is only one item


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

" Auto indent when pressed enter between html tags
function! Expander()
  let line   = getline(".")
  let col    = col(".")
  let first  = line[col-2]
  let second = line[col-1]
  let third  = line[col]

  if first ==# ">"
    if second ==# "<" && third ==# "/"
      return "\<CR>\<C-o>==\<C-o>O"

    else
      return "\<CR>"

    endif

  else
    return "\<CR>"

  endif

endfunction

inoremap <expr> <CR> Expander()

function! s:nerdTreeToggle()
    if (argc() > 0 || exists("s:std_in"))
        wincmd p
    else
        NERDTree
    endif
endfunction
