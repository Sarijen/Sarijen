" === SARIJEN VIMRC FILE ===

set tabstop=2
set shiftwidth=2
set expandtab
set number
syntax on

" Remember the cursor position when reopening a file
if has("autocmd")
  au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif

" Change Line numbering color to gray
highlight LineNr ctermfg=gray guifg=#888888

" Change the matching braces highlight color to dark violet
highlight MatchParen ctermfg=darkmagenta ctermbg=black guifg=#800080 guibg=black

" Highlight the current number line
set cursorline
hi! link CursorLine Normal
hi my_bg guibg=#000000
hi! link LineNr my_bg
hi! link CursorLineNr my_bg_cursor
highlight LineNr ctermfg=grey ctermbg=black

" Disable autocommenting after pressing Enter or O
:set formatoptions-=r
:set formatoptions-=o

" Bind switching between opened files with TAB
nnoremap <Tab> <C-^>

" Disables yanking when deleting with X
nnoremap x "_x
