let s:bundle = neobundle#get('neosnippet')
if s:bundle != {}
function! s:bundle.hooks.on_source(bundle)
let g:neosnippet#snippets_directory='~/.vim/dictionary/snippets'
endfunction
unlet s:bundle
endif
