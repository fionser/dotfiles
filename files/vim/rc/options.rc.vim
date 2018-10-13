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
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
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
set shiftwidth=2  ""auto indent for 4
set tabstop=2  ""tab width for 4
set smarttab  ""can delete four space at once.
set sm  ""parentless match
set autoindent
set smartindent
set cindent ""C Indent
set cino+=N-s,g0,:0,(0 "Cindent options
set selection=inclusive
set noeb vb t_vb= ""stop belling
:map <bs> bdw
set background=light
set t_ut=
