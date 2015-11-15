let g:acp_enableAtStartup = 0
let g:neocomplete#max_list=7
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#use_vimproc=1
let g:neocomplete#sources#syntax#min_keyword_length=3
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
let g:neocomplete#lock_buffer_name_pattern='\*ku\*'
let g:neocomplete#sources#omni#functions={'go' : 'go#complete#Complete'}
let g:neocomplete#enable_auto_close_preview=0
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

