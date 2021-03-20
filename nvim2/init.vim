" Set leader key to be sure that it loads before any other
:let mapleader=" "

" PLUGINS
source $HOME/.config/wills-dot-files/nvim2/plugins/plugins.vim

" Theme load before settings
" good site to look at color themes http://colorswat.ch/
set background=dark
colorscheme darkspace

" Key Mappings
source $HOME/.config/wills-dot-files/nvim2/keys/index.vim

" Settings
source $HOME/.config/wills-dot-files/nvim2/settings/index.vim


"Load LSPs

" Functions
source $HOME/.config/wills-dot-files/nvim2/functions/index.vim
