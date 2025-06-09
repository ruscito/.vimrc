set number
syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set wildmenu
set wildoptions=pum
set hidden
set visualbell
set t_vb=
set cursorline
set nospell
set is
set ignorecase
set smartcase
set ruler
set nowrap
set gp=git\ grep\ -n
set backupcopy=yes
set mouse=a
set laststatus=2
set clipboard=unnamed

" ===== Key Bindings =====
let mapleader = " "

" add and go up
inoremap <silent> <C-j> <ESC>0O

" copy to system clipboard in visual mode
" vnoremap <D-c> "+y
" Map ⌘+v to paste from system clipboard
"inoremap <D-v> <C-r>+
"cnoremap <D-v> <C-r>+

" buffer movements
map <F2> :bp<CR>
imap <F2> <Esc>:bp<CR>
tmap <F2> <C-W>:bp<CR>

map <F3> :bn<CR>
imap <F3> <Esc>:bn<CR>
tmap <F3> <C-W>:bn<CR>

map <F4> :ls<CR>
imap <F4> <Esc>:ls<CR>
tmap <F4> <C-W>:ls<CR>


" Go to previous/next quick fix result (for example, useful for going through :grep or
" :vimgrep results)
map <F7> :cp<CR>
imap <F7> <Esc>:cp<CR>
map <F8> :cn<CR>
imap <F8> <Esc>:cn<CR>

map <F12> :term<CR>
imap <F12> <Esc>:term<CR>
tmap <F12> <C-W>:term<CR>

" Better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap escape escape to exit terminal mode
tnoremap <Esc><Esc>  <C-\><C-N>

" Remap jk to escape in insert mode
inoremap jk <Esc>

" Clear search highlighting with <leader>/
nnoremap <leader>/ :nohlsearch<CR>

 " Explorer
nnoremap <leader>e :Ex<CR>
nnoremap <leader>l :Lexplore<CR>
nnoremap <leader>c :close<CR>

" Disable arrow keys in Visual mode
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" Use arrow keys for resizing in Normal mode
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>
nnoremap <Up> :horizontal resize +2<CR>
nnoremap <Down> :horizontal resize -2<CR>

" Run a script
nnoremap <leader>r :!./run.sh<CR>

" Split management
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>

" Fast
noremap <leader>w :w<CR>

" ========== Plug ==========
call plug#begin('~/.vim/plugged')
call plug#end()

" ========== Functions =============
function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
  return "NORMAL"
endfunction

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <leader>n :call ToggleNumber()<CR>

" Toggle between showing invisible characters
function! ToggleInvisibleChar()
    if (&list == 1)
        set nolist
    else
        set list
    endif
endfunc
nnoremap <leader>o :call ToggleInvisibleChar()<CR>

" Toggle between showing spell error
function! ToggleSpell()
    if (&spell == 1)
        set nospell
    else
        set spell
    endif
endfunc
nnoremap <leader>x :call ToggleSpell()<CR>

" Strip trailing whitespace on save
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" ======== Status Line =========
hi User1 ctermfg=green ctermbg=black
hi User2 ctermfg=yellow ctermbg=black
hi User3 ctermfg=red ctermbg=black
hi User4 ctermfg=blue ctermbg=black
hi User5 ctermfg=white ctermbg=black

set statusline=
set statusline+=%{StatuslineMode()}
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor

" ====== Color adjustment for lua file =====
" :echo synIDattr(synID(line('.'), col('.'), 1), 'name')
autocmd FIleType lua highlight luaFunction ctermfg=yellow cterm=NONE
autocmd FIleType lua highlight luaFunc ctermfg=gray cterm=NONE
autocmd FIleType lua highlight luaStringDelimiter ctermfg=green cterm=NONE
autocmd FIleType lua highlight luaString ctermfg=green cterm=NONE
autocmd FIleType lua highlight luaNumber ctermfg=green cterm=NONE
