set nocp ""set no compatiable
set ru   ""set ruler
set hls  ""set hightlights
set backspace=indent,eol,start  ""backspace will take care of indent EOF etc.
set whichwrap=b,s,<,>,[,]
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set number
set showcmd
set t_Co=256
set nocursorcolumn
set nocursorline
set norelativenumber
set foldmethod=indent
set nofoldenable
set smartcase
set matchtime=1 "100MS
set showtabline=1
set incsearch
"nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
syntax on
syntax sync minlines=80 maxlines=80
set synmaxcol=128
set regexpengine=1
set lazyredraw
filetype indent plugin on
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

set expandtab
set sw=4  ""auto indent for 4
set ts=4  ""tab width for 4
set smarttab  ""can delete four space at once.
set sm  ""parentless match
set cindent ""C Indent
set cino+=N-s,g0,:0,(0 "Cindent options
" set iskeyword-=_
set selection=inclusive
set noeb vb t_vb= ""stop belling
:map <bs> bdw
"set background=light
colorscheme solarized
