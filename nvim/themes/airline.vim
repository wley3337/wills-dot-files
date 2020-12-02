"" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '  '
let g:airline#extensions#tabline#right_sep = '  '
let g:airline#extensions#tabline#right_alt_sep = '  '

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = '  '
let g:airline_right_sep =   '  '
" small version ''''

" Switch to your current theme
let g:airline_theme = 'pop_punk'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
" set noshowmode
