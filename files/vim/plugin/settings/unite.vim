let g:unite_source_history_ank_enable = 1
nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
nnoremap <leader>y :<C-u>Unite history/yank<CR>
nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>
