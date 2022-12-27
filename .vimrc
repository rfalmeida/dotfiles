"with relativenumber, show only current line number
set number

"count lines up and down
set relativenumber

"disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"disable hjkl
"as in: http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/
"##noremap h <NOP>
"#noremap j <NOP>
"#noremap k <NOP>
"#noremap l <NOP>

"blinks if anything is wrong
set visualbell

"slows down some repeated key usage
"noremap jj <nop>
"noremap hh <nop>
"noremap kk <nop>
"noremap ll <nop>

"remapping esc
inoremap kj <esc>
inoremap jk <esc>

"browsing files, do not show blabla about directories
let g:netrw_banner = 0
let g:netrw_browse_split = 1

"improves search
set wildmode=full

"enables ctrl-n for open/close NerdTREE
map <C-n> :NERDTreeToggle<CR>

"shortcuts for ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"runtime dtrpP
set runtimepath^=~/.vim/bundle/ctrlp.vim

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoindent
filetype plugin indent on

"so that Y have same behavior than C and D
map Y y$

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

"removes a weird ^G in front of files
let g:NERDTreeNodeDelimiter = "\u00a0"

"removes these directories while searching using controlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3

