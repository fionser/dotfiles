map <silent> <Leader>ls :silent !/Applications/Skim.app/Contents/SharedSupport/displayline
                \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
                \ "%:p" <CR>
let g:LatexBox_personal_latexmkrc = 1
let g:LatexBox_show_warnings = 0

