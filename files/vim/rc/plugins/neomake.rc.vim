autocmd! BufWritePost * Neomake
let g:neomake_cpp_enable_markers= ["clang"]
let g:neomake_cpp_clang_args = ["-std=c++11", "-Wall"]
let g:neomake_warning_sign = {
            \ 'texthl' : 'WarningMsg'
            \}
