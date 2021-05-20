" Clear Search Mark
nnoremap <leader><space> :noh<cr>

" Silver Searcher
nnoremap <leader><S-f> :Ag<cr>

" Copy to clipboard
vnoremap  <C-c>  "+y

" Paste from clipboard
nnoremap <C-p> "+p

" Coc-Explorer
map <f3> :CocCommand explorer<CR>


" Fuzzy Windows Switch
map <leader>fw :Windows<CR>
map <leader>ff :Files<CR>

" Some file commands
nnoremap xt :bd<CR>
" Selecting all text in a file
nnoremap <C-A> ggVG
" redo
map <C-r> :redo <CR>
" Esc shortcut
imap jk <ESC>

" Switching splits
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Resizing-splits
noremap <silent> <C-S-Up> :resize +10<CR>
noremap <silent> <C-S-Down> :resize -10<CR>
noremap <silent> <C-S-Right> :vertical resize +10<CR>
noremap <silent> <C-S-Left> :vertical resize -10<CR>

" Tab switching 
noremap <M-1> 1gt
noremap <M-2> 2gt
noremap <M-3> 3gt
noremap <M-4> 4gt
noremap <M-5> 5gt
noremap <M-6> 6gt
noremap <M-7> 7gt
noremap <M-8> 8gt
noremap <M-9> 9gt

" Flutter mappings
map <leader>fe :CocCommand flutter.emulators<CR>
map <leader>fr :CocCommand flutter.run<CR>
map <leader>fq :CocCommand flutter.dev.quit<CR>
map <leader>fhr :CocCommand flutter.dev.hotReload<CR>
map <leader>fhR :CocCommand flutter.dev.hotRestart<CR>
map <leader>fdl :call OpenFlutterLog()<CR>


" autoreloading config file
nnoremap nve :e $MYVIMRC<CR>
nnoremap nvc :so $MYVIMRC<CR>

" coc-commands
nmap <silent> <leader>gd :vsplit<CR><Plug>(coc-definition)
nmap <silent> <leader>gt :vsp<CR><Plug>(coc-definition)<C-W>T
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Applying codeAction shortcut
nmap <leader>coa :CocAction<CR>

" Applying codeAction to the selected region.
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Swap window splits
nnoremap <leader>sw <C-W><C-x>

" Home and End of current line
map <leader>b <Home>
map <leader>e <End>

" Pasting issue
set pastetoggle=<F5>

" Vista window
nnoremap <leader>v :Vista!!<CR> 

" Bharyang
vnoremap <leader>bh :Bharyang<CR>


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap <C-f> and <C-b> for scroll float windows/popups.
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
