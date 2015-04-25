let s:bundle = neobundle#get('vim-godef')
function! s:bundle.hooks.on_source(bundle)
let g:godef_split=0
endfunction
unlet s:bundle

