" testing git settings
" last bit of video to watch : https://www.youtube.com/watch?v=-AZUIL1rY3U
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" All plugins should go inside the call plug#begin/end
" lsp - refferres to language server (protocal)
call plug#begin('~/.config/nvim/autoload/plugged')
" Plugins from video
" Plug 'https://github.com/kassio/neoterm' " opens a terminal inside neo vim (persists through use)
Plug 'https://github.com/szw/vim-maximizer' " maximize the current pane

" Telescope Plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim' " allows for Lua functions to have access to system files
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'christoomey/vim-tmux-navigator' "Tmux Plugin
" Plug 'mbbill/undotree'
Plug 'https://github.com/tpope/vim-commentary' " comments out lines of code in visual mode

" THEMES
" Theme-plugin "name-of-theme
Plug 'bignimbus/pop-punk.vim' "pop-punk -Used in as my airline theme
Plug 'https://github.com/yuqio/vim-darkspace' "darkspace used in for neovim
" Plug 'dracula/vim'
" Plug 'jaredgorski/spacecamp'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'ParamagicDev/vim-medic_chalk' "medic_chalk
" Plug 'https://github.com/cliuj/vim-dark-meadow' "dark-meadow
" Plug 'https://github.com/drewtempelmeyer/palenight.vim' "palenight
" Plug 'https://github.com/bluz71/vim-moonfly-colors'

"" Git
Plug 'https://github.com/airblade/vim-gitgutter' " adds space to the left of number line for icons
Plug 'https://tpope.io/vim/fugitive.git' " support for git diff elements in the gutter
Plug 'https://github.com/itchyny/vim-gitbranch' " light line uses this to pull branch info

" JS Doc string plugin
Plug 'https://github.com/heavenshell/vim-jsdoc', {
      \'for': ['javascript', 'javascript.jsx', 'typescript', ],
      \ 'do': 'make install'
      \}
" Plug 'https://github.com/sonph/onehalf', {'rtf': 'vim/'}
" "" Folding plugins
" Plug 'https://github.com/tmhedberg/SimpylFold'
" Plug 'ryanoasis/vim-devicons'

"" AirLine
Plug 'https://github.com/vim-airline/vim-airline' " Airline ( info line at bottom/top of vim buffer )
Plug 'https://github.com/vim-airline/vim-airline-themes' " Airline Themes
" Plug 'https://github.com/itchyny/lightline.vim' " airline alt

" Language Server: (LSP)
Plug 'https://github.com/neovim/nvim-lspconfig' " helps configure the native language servers
Plug 'https://github.com/hrsh7th/nvim-compe'
" Snipets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"Plug 'https://github.com/nvim-lua/completion-nvim' " gives you completion

"" Coc for explorer
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}

Plug 'https://github.com/tpope/vim-surround' " allows surrounding the highlighted code
Plug 'https://github.com/jiangmiao/auto-pairs' " Auto pairs for '(' '[' '{'
Plug 'https://github.com/frazrepo/vim-rainbow' "colorizes paired brackets
Plug 'https://github.com/windwp/nvim-ts-autotag' " auto completes html type tags

" "" === other === from https://github.com/devinrm/dotfiles/blob/trunk/config/nvim/init.vim
" Plug 'https://github.com/RRethy/vim-illuminate'

"" Testing and Debugging
Plug 'https://github.com/janko/vim-test' " testing plugin - you can trigger the test for the file while writing in it
Plug 'https://github.com/puremourning/vimspector' " debugger

" Plug 'https://github.com/rhysd/devdocs.vim'
" Plug 'https://github.com/tpope/vim-endwise'
" Plug 'https://github.com/tweekmonster/startuptime.vim'
" "
" " === language plugins ===
" Some of these may no longer be needed. Left commented so I can pull them in as needed
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
"Plug 'sheerun/vim-polyglot' " Better Syntax Support
" "HTML
" Plug 'https://github.com/othree/html5.vim'
" " CSS
" Plug 'https://github.com/hail2u/vim-css3-syntax'
" Plug 'https://github.com/ap/vim-css-color', { 'for': 'css' }
" " MD
" " Plug 'https://github.com/iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" " JS
"Plug 'https://github.com/pangloss/vim-javascript'
"Plug 'https://github.com/maxmellon/vim-jsx-pretty'
"Plug 'https://github.com/yuezk/vim-js'
"Plug 'https://github.com/elzr/vim-json'

" TypeScript and TSX support
"Plug 'https://github.com/leafgarland/typescript-vim'
"Plug 'https://github.com/peitalin/vim-jsx-typescript'

" " Prettier
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Other
Plug 'https://github.com/sbdchd/neoformat' " formats source code
Plug 'https://github.com/rhysd/vim-clang-format'
" Plug 'https://github.com/tpope/vim-rails'
" Plug 'https://github.com/rust-lang/rust.vim'
" Plug 'https://github.com/jparise/vim-graphql'
" Plug 'https://github.com/evanleck/vim-svelte', {'branch': 'main'}
" Plug 'https://github.com/HerringtonDarkholme/yats.vim'

call plug#end()
" Set leader key to be sure that it loads before any other
:let mapleader=" "

syntax on                           " Enables syntax highlighing

set autochdir                          " Your working directory will always be the same as your working directory
set autoindent                          " Good auto indent
set background=dark                     " tell vim what the background color looks like
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=2                         " More space for displaying messages
set completeopt=menuone,noinsert,noselect
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
" set cursorcolumn                        " Enable highlighting of the current column
set encoding=utf-8                      " The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf-8                  " The encoding written to file
set formatoptions-=cro                  " Stop newline continuation of comments
set hidden                              " Required to keep multiple buffers open multiple buffers
set history=1000                        " Increase the undo limit
set ignorecase                          " ignores case in searching, required for smartcase to work
set incsearch                           " incremental search as you type
set iskeyword+=-                      	" treat dash separated words as a word text object"
set laststatus=0                        " Always display the status line
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace
set mouse=a                             " Enable your mouse
set matchtime=0                         " Speed up escape after (){} chars
set nobackup                            " This is recommended by coc
set noerrorbells                        " No audio bells for errors
set nohlsearch                          " Turns highlighting search off after hitting enter"
"set noshowmode                          " We don't need to see things like -- INSERT -- anymore
"set nowrap                              " Display long lines as just one line
set noswapfile                          " removes swap file
set nowritebackup                       " This is recommended by coc
set number                              " Line numbers
set pumheight=10                        " Makes popup menu smaller
set relativenumber                      " Show line number on current line and relative numbers on all other lines
set ruler                               " Show the cursor position all the time
set scrolloff=5                         " show 5 lines above and below cursor
set shiftwidth=2                        " Change the number of space characters inserted for indentation
"" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set showtabline=2                       " Always show tabs
"" Always show the signcolumn, otherwise it would shift the text each time
"" diagnostics appear/become resolved.
set signcolumn=yes                      " Adds an extra column to the left of line numbers for icons
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartcase                           " Automatically switch search to case-sensitive when search query contains an uppercase
set smartindent                         " Makes indenting smart
set spell                               " Enable spell check
set spellfile=$HOME/.vim-spell-en.utf-8.add " Name of the word list file where words are added for the |zg| and |zw| commands.
set spelllang=en_us                     " Set region to US English
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=2                           " Insert 2 spaces for a tab
set timeoutlen=200                      " By default timeoutlen is 1000 ms
set updatetime=300                      " Faster completion
set undodir=~/.config/nvim/undodir      " sets an undo directory
set undofile                            " makes an undo file for everything that you do
set showtabline=2                       " Always show tabs
" set noshowmode                        " We don't need to see things like -- INSERT -- anymore
if (has("termguicolors"))
  set termguicolors                     " set colors if available
endif

filetype plugin indent on " file type for plug ins for indentation

" things he sets that I do not
" letg:netrw_banner=0 " removes banner
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'json=javascript'] " adds syntax highlighting for code snippets in markdown files inside of the back ticks (```bash)


" *** Color Scheme
" Theme load before settings
" good site to look at color themes http://colorswat.ch/
set background=dark
colorscheme darkspace

"Coc-Explorere
nnoremap <space>e :CocCommand explorer --preset floating<CR>
let g:coc_explorer_global_presets = {
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\ }

" Key Bindings
" TAB in normal mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" szw/vim-maximizer
nnoremap <silent> <leader>m :MaximizerToggle!<CR>

" Escape with jk or kj in quick succession
inoremap jk <Esc>
inoremap kj <Esc>

" Move through soft-wrapped spaces
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'
" Treesitter settings
lua require'nvim-treesitter.configs'.setup{ highlight = {enable = true} }

" Language Server settings
lua <<EOF
-- local variables
 -- Follows the blog here: https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c
 local nvim_lsp = require("lspconfig")

  local format_async = function(err, _, result, _, bufnr)
      if err ~= nil or result == nil then return end
      if not vim.api.nvim_buf_get_option(bufnr, "modified") then
          local view = vim.fn.winsaveview()
          vim.lsp.util.apply_text_edits(result, bufnr)
          vim.fn.winrestview(view)
          if bufnr == vim.api.nvim_get_current_buf() then
              vim.api.nvim_command("noautocmd :update")
          end
      end
  end

  vim.lsp.handlers["textDocument/formatting"] = format_async

  _G.lsp_organize_imports = function()
      local params = {
          command = "_typescript.organizeImports",
          arguments = {vim.api.nvim_buf_get_name(0)},
          title = ""
      }
      vim.lsp.buf.execute_command(params)
  end

   local filetypes={
    typescript = "eslint",
    typescriptreact = "eslint"
   }

  local linters = {
    eslint = {
      sourceName = "eslint",
      command = "eslint_d",
      rootPatterns = {".eslintrc.js", "package.json"},
      debounce = 100,
      args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
      parseJson={
        errorsRoot = "[0].messages",
        line = "line",
        column = "column",
        endLine = "endLine",
        endColumn = "endColumn",
        message = "${message} [${ruleId}]",
        security= "severity"
      },
      securities= {[2] = "error", [1]="warning"}
    }
  }

  local formatters={
    prettier={command = "prettier", args={"--stdin-filepath", "%filepath"}}
  }

  local formatFileTypes={
    typescript = "prettier",
    typescriptreact = "prettier"
  }

  local on_attach = function(client, bufnr)
    vim.cmd("command! LspDef lua vim.lsp.buf.definition()")
    vim.cmd("command! LspFormatting lua vim.lsp.buf.formatting()")
    vim.cmd("command! LspCodeAction lua vim.lsp.buf.code_action()")
    vim.cmd("command! LspHover lua vim.lsp.buf.hover()")
    vim.cmd("command! LspRename lua vim.lsp.buf.rename()")
    vim.cmd("command! LspOrganize lua lsp_organize_imports()")
    vim.cmd("command! LspRefs lua vim.lsp.buf.references()")
    vim.cmd("command! LspTypeDef lua vim.lsp.buf.type_definition()")
    vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    vim.cmd("command! LspDiagPrev lua vim.lsp.diagnostic.goto_prev()")
    vim.cmd("command! LspDiagNext lua vim.lsp.diagnostic.goto_next()")
    vim.cmd("command! LspDiagLine lua vim.lsp.diagnostic.show_line_diagnostics()")
    vim.cmd("command! LspSignatureHelp lua vim.lsp.buf.signature_help()")
    if client.resolved_capabilities.document_formatting then
          vim.api.nvim_exec([[
           augroup LspAutocommands
               autocmd! * <buffer>
               autocmd BufWritePost <buffer> LspFormatting
           augroup END
           ]], true)
      end
  end
-- JS, TS
  nvim_lsp.tsserver.setup{
    on_attach= function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
    end
      }
-- Diagnostic ( Eslint_d )
  nvim_lsp.diagnosticls.setup{
    on_attach=on_attach,
    filetypes=vim.tbl_keys(filetypes),
    init_options={
      filetypes=filetypes,
      linters=linters,
      formatters=formatters,
      formatFiletypes=formatFiletypes
      }
  }
 -- python
  nvim_lsp.pylsp.setup{}
 -- c++
  nvim_lsp.ccls.setup{}
  nvim_lsp.clangd.setup{}

EOF

"vim-vsnip and nvim-compe setup
lua <<EOF
  -- use .ts snippets in .tsx files
  vim.g.vsnip_filetypes = {
      typescriptreact = {"typescript"}
  }

  require"compe".setup {
      preselect = "always",
      source = {
          path = true,
          buffer = true,
          vsnip = true,
          nvim_lsp = true,
          nvim_lua = true
      }
  }

  local t = function(str)
      return vim.api.nvim_replace_termcodes(str, true, true, true)
  end

  _G.tab_complete = function()
      if vim.fn.pumvisible() == 1 then
          return vim.fn["compe#confirm"]()
      elseif vim.fn.call("vsnip#available", {1}) == 1 then
          return t("<Plug>(vsnip-expand-or-jump)")
      else
          return t("<Tab>")
      end
  end

  vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
  vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
  vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", {expr = true, silent = true})
  vim.api.nvim_set_keymap("i", "<CR>", [[compe#confirm("<CR>")]], {expr = true, silent = true})
  vim.api.nvim_set_keymap("i", "<C-e>", [[compe#close("<C-e>")]], {expr = true, silent = true})

EOF

""" Python settings for pyls
set completeopt -=preview
" use omni completion provide by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
""" End Python Settings

" language server mapings
nnoremap <silent> ga <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gR <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" sbdchd/neoformat
nnoremap <leader>F :Neoformat prettier<CR>

" testing key maps
" janko/vim-test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> t_ :TestLast<CR>
let test#strategy = "neovim"
let test#neovim#term_position = "vertical"

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" === commentary ===
nnoremap <leader>c :Commentary<CR>
xnoremap <leader>c :Commentary<CR>

"" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" upper tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '  '
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = ' '

" lower airline
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii=1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]' "doesn't display utf unless it's not utf-8
let g:airline_stl_path_style = 'short' "display short path in status line
"let g:airline_section_c_only_filename=1
let g:airline_left_sep = ''
let g:airline_right_sep =   ''
" small version ''''
" Switch to your current theme
let g:airline_theme = 'pop_punk'

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
" all default symbols for airline
  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.colnr = ' ㏇:'
  let g:airline_symbols.colnr = ' ℅:'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.linenr = ' ␊ '
  let g:airline_symbols.linenr = ' ␤ '
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  "let g:airline_symbols.colnr = ' :'
  let g:airline_symbols.colnr = ' C:'
  let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ' :'
  let g:airline_symbols.linenr = ' L:'
  "let g:airline_symbols.maxlinenr = '☰ '
  let g:airline_symbols.maxlinenr = ' '
  let g:airline_symbols.dirty=' ⚡'

  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  "let g:airline_symbols.linenr = '⭡ '
  let g:airline_symbols.linenr = ' ⭡ '

"
" FUNCTIONS
"" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler.
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

" Trim trailing whitespace and extra lines
function! s:TrimTrailingWhitespace()
  let l:pos = getpos('.')
  %s/\s\+$//e
  call setpos('.', l:pos)
endfunction

function! s:TrimBlankLines()
  let l:pos = getpos('.')
  :silent! %s#\($\n\s*\)\+\%$##
  call setpos('.', l:pos)
endfunction

augroup vimTrim
  autocmd!
  autocmd BufWritePre * call s:TrimTrailingWhitespace()
  autocmd BufWritePre * call s:TrimBlankLines()
augroup END

" Auto format on save
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

lua <<EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix= ' >',
    color_devicons = true,

    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
      i= {
        ["<C-x>"]= false,
        ["<C-q>"]= actions.send_to_qflist,
        }
      }
    },
  extensions= {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
      }
    }
  }
require('telescope').load_extension('fzy_native')
EOF
