call plug#begin('~/.config/nvim/plugged')

" JavaScript Plugin
Plug 'pangloss/vim-javascript'

" Jsx Pretty
Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Emmet
Plug 'mattn/emmet-vim'

" Indent GuideLines
Plug 'Yggdroot/indentLine'

" Prettier PLugin
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" React snippets
Plug 'mlaursen/vim-react-snippets'

" Conquer of completness
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Nerd Tree
Plug 'preservim/nerdtree'

" Nerd commenter
Plug 'preservim/nerdcommenter'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Surround 
Plug 'tpope/vim-surround'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Format Code
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" Auto-Pairs
Plug 'jiangmiao/auto-pairs'

" Show git change (change, delete, add) signs in vim sign column
Plug 'mhinz/vim-signify'
" Git command inside vim
Plug 'tpope/vim-fugitive', {'on': ['Gstatus']}
Plug 'Xuyuanp/nerdtree-git-plugin'

" Since tmux is only available on Linux and Mac, we only enable these plugins
" for Linux and Mac
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
" .tmux.conf syntax highlighting and setting check
" Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

" Comfortable motion
Plug 'yuttie/comfortable-motion.vim'

" Color theme
Plug 'morhetz/gruvbox'

" Dev-icons
Plug 'ryanoasis/vim-devicons'

" end vim-plug
call plug#end()
