let s:bundle = neobundle#get('nerdtree')
function! s:bundle.hooks.on_source(bundle)
    nnoremap <silent> <leader>d :<C-u>NERDTree<CR>
endfunction
