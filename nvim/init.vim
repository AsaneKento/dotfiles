""
"" keybind 
""
inoremap <silent> jj <ESC>

""
"" basic setting
""
set shiftwidth=2
set tabstop=2
set textwidth=0
set autoindent
set hlsearch
set clipboard=unnamed
set expandtab
set number

""
"" vim-Plug
""
call plug#begin()

" ColorScheme github-nvim-theme
Plug 'projekt0n/github-nvim-theme'

" StatusBar vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" FileTree fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
"-Add Preview
Plug 'yuki-yano/fern-preview.vim'
"-Add Github
Plug 'lambdalisue/fern-git-status.vim'
"-Add Icon
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" Search fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Git vim-gitgutter
Plug 'airblade/vim-gitgutter'

" 保管機能 coc-nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

"" ColorScheme  github-nvim-theme
let g:github_function_style = "italic"
let g:github_sidebars = ["qf", "vista_kind", "terminal", "packer"]

let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

colorscheme github_dark

"" StatusBar vim-airline
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
let g:airline_theme = 'papercolor'
let g:airline#extensions#hunks#non_zero_only = 1 

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 0

"" FileTree fern
" ctrl + n でファイルツリーの表示・非表示切り替え
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
" 隠しファイルを表示する
let g:fern#default_hidden=1

"-Add Icon
let g:fern#renderer = 'nerdfont'

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END

"-Add Preview
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

"" Git vim-gitgutter
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red
set updatetime=250

