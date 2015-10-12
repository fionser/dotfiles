let s:bundle = neobundle#get('clang_complete')
if s:bundle != {}
function! s:bundle.hooks.on_source(bundle)

let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_complete_copen=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=0
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libc++ -std=c++11'
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'

endfunction
unlet s:bundle
endif
