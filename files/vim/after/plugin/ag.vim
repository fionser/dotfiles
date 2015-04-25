let s:bundle = neobundle#get('ag.vim')
function! s:bundle.hooks.on_source(bundle)

let g:ackprg='ag --nogroup --nocolor --column'

endfunction
unlet s:bundle
