"" Sourced files for better organizeation
" **** PLUGINS
sourc $HOME/.config/nvim/vim-plug/plugins.vim
" **** CONFIG/SETTINGS
source $HOME/.config/nvim/general/settings.vim
" **** Keybindings
source $HOME/.config/nvim/general/keys/mappings.vim
" **** NERDTree
source $HOME/.config/nvim/general/plugin-settings/nerdTree.vim
" **** Rainbow
source $HOME/.config/nvim/general/plugin-settings/rainbow.vim

" **** Airline Theme Setting
source $HOME/.config/nvim/themes/airline.vim

"" good site to look at color themes http://colorswat.ch/
set t_Co=256
set cursorline
colorscheme dracula

"" Terminal Settings
"" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
"" Fuzzy finder settings
"" Ignore all files in .gitignore using silver searcher
let $FZF_DEFAULT_COMMAND = 'ag -g ""'


" ||f |||u |||n |||c |||t |||i |||o |||n |||s ||
" ||__|||__|||__|||__|||__|||__|||__|||__|||__||
" |/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler.
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
        \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

" Make comments italic
augroup ItalicComments
  autocmd!
  autocmd ColorScheme * highlight Comment gui=italic
  autocmd ColorScheme * highlight Comment cterm=italic
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
