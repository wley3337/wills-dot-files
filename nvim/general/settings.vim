syntax on                           " Enables syntax highlighing

set autochdir                          " Your working directory will always be the same as your working directory
set autoindent                          " Good auto indent
set background=dark                     " tell vim what the background color looks like
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=2                         " More space for displaying messages
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set cursorcolumn                        " Enable highlighting of the current column
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf-8                  " The encoding written to file
set formatoptions-=cro                  " Stop newline continuation of comments
set hidden                              " Required to keep multiple buffers open multiple buffers
set history=1000                        " Increase the undo limit
set hlsearch                            " Enable search highlighting
set iskeyword+=-                      	" treat dash separated words as a word text object"
set incsearch                           " incremental search as you type
set laststatus=0                        " Always display the status line
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set mouse=a                             " Enable your mouse
set matchtime=0                         " Speed up escape after (){} chars
set nobackup                            " This is recommended by coc
set nohlsearch                          " Turns highlighting search off after hitting enter"
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
"set nowrap                              " Display long lines as just one line
set noswapfile                          " removes swap file
set nowritebackup                       " This is recommended by coc
set number                              " Line numbers
set pumheight=10                        " Makes popup menu smaller
set relativenumber                      " Show line number on current line and relative numbers on all other lines
set ruler              			            " Show the cursor position all the time
set scrolloff=3                         " show 5 lines above and below cursor
set shiftwidth=2                        " Change the number of space characters inserted for indentation
"" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set showtabline=2                       " Always show tabs
"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
set signcolumn=yes
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartcase                           " Automatically switch search to case-sensitive when search query contains an uppercase
set smartindent                         " Makes indenting smart
set spell                               " Enable spell check
set spellfile=$HOME/.vim-spell-en.utf-8.add " Name of the word list file where words are added for the |zg| and |zw| commands.
set spelllang=en_us                     " Set region to US English
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set timeoutlen=200                      " By default timeoutlen is 1000 ms
set updatetime=300                      " Faster completion
set undodir=~/.config/nvim/undodir      " sets an undo directory
set undofile                            " makes an undo file for everything that you do
set clipboard^=unnamedplus              " sets clipboard to OS clipboard so anything yanked goes to that clipboard

"" Theme config
if (has("termguicolors"))
 set termguicolors
endif
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
