lua require('plugins')
lua require('keymap')

colorscheme gruvbox
syntax on
syntax sync minlines=80 maxlines=80
filetype indent plugin on

set background=dark 
" Enable blinking together with different cursor shapes for insert/command mode, and cursor highlighting:
set guicursor=n-v-c:block,i-ci-ve:block,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
set nocp ""set no compatiable
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
set synmaxcol=128
set regexpengine=1
set lazyredraw
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
set omnifunc=v:lua.vim.lsp.omnifunc

" Yank copy from/to clipboard
vmap <Leader>y "+y
vmap <leader>d "+d
vmap <leader>p "+p
vmap <leader>p "+P
nmap <leader>p "+p
nmap <leader>p "+P

" window movement
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Normal Mode
nnoremap j gj
nnoremap k gk
nnoremap $ g$
nnoremap 0 g0
nnoremap <Down> gj
nnoremap <Up> gk

"" Virtual Mode
vnoremap j gj
vnoremap k gk
vnoremap <Down> gj
vnoremap <Up> gk

"" Insert Mode
"" Arrow move down/up
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
"" jump to line end
inoremap <C-e> <C-o>$
"" jump to line begin
inoremap <C-a> <C-o>0

xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction
