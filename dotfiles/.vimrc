" === SARIJEN VIMRC FILE ===


" Use 2 real spaces instead of 4-long-spaces TAB
set tabstop=2
set shiftwidth=2
set expandtab

set number " Enables Line numbering
set hid " Allows file switching without always saving
set so=7 " Minimum lines below/above cursor when scrolling
syntax on " Syntax Highlighting

" Remember the cursor position when reopening a file
if has("autocmd")
  au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

" Disable autocommenting after pressing Enter or O
" For some reason it doesnt work (please help, i hate this feature)

set formatoptions-=o
set formatoptions-=r

" Bind switching between opened files with TAB
nnoremap <Tab> <C-^>

" Disables yanking when deleting with X and D
nnoremap x "_x
nnoremap d "_d

" Puts yanked text to system clipboard in visual mode
vnoremap y "+y

" ==================== HIGHLIGHTING / COLORS ==================


" Change Line numbering color to gray
highlight LineNr ctermfg=gray guifg=#888888

" Change the matching braces highlight color to dark violet
highlight MatchParen ctermfg=darkmagenta ctermbg=black guifg=#e64553 guibg=black

" Highlight the current number line
set cursorline
hi! link CursorLine Normal
hi my_bg guibg=#000000
hi! link LineNr my_bg
hi! link CursorLineNr my_bg_cursor
highlight LineNr ctermfg=grey ctermbg=black

function! _blockcomment()
highlight cType guifg=#cba5f7
highlight cIncluded guifg=#FF00FF
highlight cInclude guifg=#04a5e5
highlight cUserFunction guifg=#74c7ec
endfunction


" ==================== PLUGINS ==================


call plug#begin()

Plug 'vimsence/vimsence'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
