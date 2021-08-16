nnoremap <leader>da :call vimspectore#Launch()<CR>
nnoremap <leader>dx :call vimspectore#Reset()<CR>
nnoremap <S-k> :call vimspectore#StepOut()<CR>
nnoremap <S-l> :call vimspectore#StepInto()<CR>
nnoremap <S-j> :call vimspectore#StepOver()<CR>
nnoremap <leader>d_ :call vimspectore#Restart()<CR>
nnoremap <leader>dn :call vimspectore#Continue()<CR>
nnoremap <leader>drc :call vimspectore#RunToCursor()<CR>
nnoremap <leader>dh :call vimspectore#ToggleBreakpoint()<CR>
nnoremap <leader>de :call vimspectore#ToggleConditionalBreakpoint()<CR>
nnoremap <leader>dX :call vimspectore#ClearBreakpoints()<CR>