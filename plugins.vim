call plug#begin('~/.config/nvim/plugged')

" Sort
Plug 'squgeim/bharyang-vim', { 'do': 'npm install -g bharyang-cli', 'for': ['javascript','typescript','javascriptreact','typescriptreact'] } 

Plug 'liuchengxu/vista.vim'

" Color theme
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'b4skyx/serenade'

" Dev-icons
Plug 'ryanoasis/vim-devicons'

" Indent GuideLines
Plug 'Yggdroot/indentLine'
Plug 'elzr/vim-json'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Conquer of completness
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Code Foramtter
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'

" Nerd commenter
Plug 'preservim/nerdcommenter'

" Jsx Pretty
Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

" Rainbow Brackets
Plug 'luochen1990/rainbow'

" Snippets
Plug 'vim-scripts/UltiSnips' 
Plug 'mlaursen/vim-react-snippets'

" Emmet
Plug 'mattn/emmet-vim'

"Auto close tags
Plug 'alvan/vim-closetag'

" Auto-Pairs
Plug 'jiangmiao/auto-pairs'

" Sneak to any position
Plug 'justinmk/vim-sneak'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Multiple Cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Surround 
Plug 'tpope/vim-surround'

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Show git change (change, delete, add) signs in vim sign column
Plug 'APZelos/blamer.nvim'
" Git command inside vim
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Since tmux is only available on Linux and Mac, we only enable these plugins
" for Linux and Mac
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
" .tmux.conf syntax highlighting and setting check
" Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }

call plug#end()
