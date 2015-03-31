let s:bundle = neobundle#get('jedi-vim')
function! s:bundle.hooks.on_source(bundle)
    let g:jedi#popup_on_dot = 0
    let g:jedi#completions_command ="<C-N>"
endfunction
unlet s:bundle

