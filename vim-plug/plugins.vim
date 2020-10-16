" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

"undo
Plug 'mbbill/undotree'
"" Theme
Plug 'dracula/vim'
Plug 'jaredgorski/spacecamp'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'https://github.com/drewtempelmeyer/palenight.vim'
"Plug 'https://github.com/bluz71/vim-moonfly-colors'
Plug 'sonph/onehalf', {'rtf': 'vim/'}
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"" AirLine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Coc language server for auto complete
"" Other language server settings -> https://github.com/neoclide/coc.nvim/wiki/Language-servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-python']

"" Rainbow brackets
Plug 'frazrepo/vim-rainbow'
"" === other === from https://github.com/devinrm/dotfiles/blob/trunk/config/nvim/init.vim
Plug 'https://github.com/RRethy/vim-illuminate'
Plug 'https://github.com/ap/vim-css-color', { 'for': 'css' }
Plug 'https://github.com/janko-m/vim-test'
Plug 'https://github.com/rhysd/devdocs.vim'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-endwise'
Plug 'https://github.com/tweekmonster/startuptime.vim'
"
" === language plugins ===
Plug 'https://github.com/hail2u/vim-css3-syntax'
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'https://github.com/maxmellon/vim-jsx-pretty'
Plug 'https://github.com/HerringtonDarkholme/yats.vim'
Plug 'https://github.com/othree/html5.vim'
Plug 'https://github.com/yuezk/vim-js'
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/rust-lang/rust.vim'
"" TypeScript and TSX support
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()
