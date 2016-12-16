let s:bundle = neobundle#get('vim-godef')
if s:bundle != {}
function! s:bundle.hooks.on_source(bundle)
let g:godef_split=0
endfunction
unlet s:bundle
endif

