call plug#begin('~/.config/nvim/plugged')

" Jsx Pretty
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

" Find Functions,Variables,Classes etc
Plug 'misterbuckley/vim-definitive'

"Auto close tags
Plug 'alvan/vim-closetag'

" Sneak to any position
Plug 'justinmk/vim-sneak'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Emmet
Plug 'mattn/emmet-vim'

" Indent GuideLines
Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'

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
Plug 'junegunn/fzf.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple Cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Surround 
Plug 'tpope/vim-surround'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Code Foramtter
Plug 'sbdchd/neoformat'

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

" Vim snippest
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Color theme
Plug 'morhetz/gruvbox'

" Dev-icons
Plug 'ryanoasis/vim-devicons'

" end vim-plug
call plug#end()
