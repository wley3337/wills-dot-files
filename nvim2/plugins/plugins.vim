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
" Vim Surround
Plug 'https://github.com/tpope/vim-surround'
"Tmux Plugin
Plug 'christoomey/vim-tmux-navigator'
"undo
Plug 'mbbill/undotree'
" commentary
Plug 'https://github.com/tpope/vim-commentary'
" Theme
Plug 'dracula/vim'
Plug 'jaredgorski/spacecamp'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'bignimbus/pop-punk.vim' "pop-punk
Plug 'ParamagicDev/vim-medic_chalk' "medic_chalk
Plug 'https://github.com/cliuj/vim-dark-meadow' "dark-meadow
Plug 'https://github.com/yuqio/vim-darkspace' "darkspace
Plug 'https://github.com/drewtempelmeyer/palenight.vim' "palenight

Plug 'https://github.com/bluz71/vim-moonfly-colors'

"" Git
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://tpope.io/vim/fugitive.git'

Plug 'https://github.com/heavenshell/vim-jsdoc', {
      \'for': ['javascript', 'javascript.jsx', 'typescript', ],
      \ 'do': 'make install'
      \}
Plug 'https://github.com/sonph/onehalf', {'rtf': 'vim/'}
" Plug 'https://github.com/preservim/nerdtree' |
"             \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
"" Fuzzy finder
Plug 'https://github.com/junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim'
"" AirLine
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
" Language Server: (LSP)
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/hrsh7th/nvim-compe'
Plug 'https://github.com/nvim-lua/completion-nvim'
"" Coc for explorer
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
"" Rainbow brackets
Plug 'https://github.com/frazrepo/vim-rainbow'
"" === other === from https://github.com/devinrm/dotfiles/blob/trunk/config/nvim/init.vim
Plug 'https://github.com/RRethy/vim-illuminate'
" testRunnner
Plug 'https://github.com/janko-m/vim-test'
" debugger
Plug 'https://github.com/puremourning/vimspector'

Plug 'https://github.com/rhysd/devdocs.vim'
Plug 'https://github.com/tpope/vim-endwise'
Plug 'https://github.com/tweekmonster/startuptime.vim'
"
" === language plugins ===
"HTML
Plug 'https://github.com/othree/html5.vim'
" CSS
Plug 'https://github.com/hail2u/vim-css3-syntax'
Plug 'https://github.com/ap/vim-css-color', { 'for': 'css' }
" MD
Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" JS
Plug 'https://github.com/maxmellon/vim-jsx-pretty'
Plug 'https://github.com/yuezk/vim-js'
Plug 'https://github.com/elzr/vim-json'
" TypeScript and TSX support
Plug 'https://github.com/leafgarland/typescript-vim'
Plug 'https://github.com/peitalin/vim-jsx-typescript'
" Other
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/jparise/vim-graphql'
Plug 'https://github.com/evanleck/vim-svelte', {'branch': 'main'}

Plug 'https://github.com/HerringtonDarkholme/yats.vim'

call plug#end()
