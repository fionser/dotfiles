let g:LatexBox_viewer = 'evince'
let g:LatexBox_personal_latexmkrc = 1
let g:LatexBox_show_warnings = 0
let g:LatexBox_latexmk_options = "-pdf"
              "\ '-pdflatex="pdflatex -synctex=1 %O %S"'

autocmd BufNewFile,BufRead *.tex nnoremap <buffer> <LocalLeader>ll :update!<CR>:Latexmk!<CR>
map <silent> <Leader>ls ':LatexView ' . '-forward-search '
            \ . shellescape(expand('%:p')) . ' ' . line(".") . '\<CR>'
