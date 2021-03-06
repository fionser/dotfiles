let g:dein#install_progress_type = 'echo'
let g:dein#install_message_type = 'echo'
let s:path = expand('$CACHE/dein')
if !dein#load_state(s:path)
  finish
endif

call dein#begin(s:path, expand('<sfile>'))

call dein#load_toml('~/.vim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.vim/rc/deinlazy.toml', {'lazy' : 1})
call dein#load_toml('~/.vim/rc/deinft.toml')

if !IsMac()
    call dein#disable('clang_complete')
endif

call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  " Installation check.
  call dein#install()
endif
