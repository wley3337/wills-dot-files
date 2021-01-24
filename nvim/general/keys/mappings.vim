" Leader keys
":let mapleader=" " set in init.vim
source $HOME/.config/wills-dot-files/nvim/general/keys/cocMappings.vim
source $HOME/.config/wills-dot-files/nvim/general/keys/jsdocMappings.vim

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"  Escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in normal mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Move through soft-wrapped spaces
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
nnoremap <C-h> :set hlsearch!<cr>
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
"" === commentary ===
nnoremap <leader>c :Commentary<CR>
xnoremap <leader>c :Commentary<CR>
"" Toggle
" nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
"" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
"" open terminal on ctrl+n
nnoremap <leader>t :call OpenTerminal()<CR>
"" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
"" Fuzzy finder
" === fzf.vim ===
nnoremap <C-p> :wa<CR>:Files<CR>
nnoremap <C-t> :wa<CR>:Tags<CR>
nnoremap <C-b> :wa<CR>:Buffers<CR>
nnoremap <Leader>p :BLines<CR>
nnoremap <Leader>gc :wa<CR>:Commits<CR>
nnoremap <Leader>hi :wa<CR>:History<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
