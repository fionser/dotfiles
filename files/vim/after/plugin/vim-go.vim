let s:bundle = neobundle#get('vim-go')
function! s:bundle.hooks.on_source(bundle)
let g:go_fmt_fail_silently = 1
endfunction
unlet s:bundle
