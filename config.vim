" Set leader
let mapleader=" "

" Key Binding to EDIT, SAVE & RELOAD file
map <leader>vm :vsp $MYVIMRC<CR>
map <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>e :q!<CR>

" Key binding for Cargo run
nnoremap <leader>cx :!cargo run<CR>

" Key binding to format file
map <leader>fmt :normal gg=G``
" Key Mapping in insert mode  
" Map ESC key to jj 
inoremap jj <ESC>

" Key Mapping in View Mode


" 1. Basic Comfigurations

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type detection. Vim will be able to try to detect the type of fiel in use
filetype on

" Load an indent file for the detected file type
filetype indent on

" Syntax highlight on
syntax on

" Set line numbering
set relativenumber

" Highlight cursor line underneath the cursor horizontally
set cursorline
" > hi CursorLine   cterm=underline ctermbg=darkred ctermfg=white guibg=darkred guifg=white


" Highlight cursor line underneath the cursor vertically
set cursorcolumn
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn ctermbg=gray ctermfg=NONE guibg=NONE guifg=NONE

" Set shift width to 4 space
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters insted of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines.
set scrolloff=15

" Do not wrap lines. Allow long line to extend as far as line goes.
set nowrap

" While searching through a file incerementlly highlight matching characteres as you type
set incsearch

" Ignore capital letters during search.
set ignorecase

" Show partail command you type in the last line of the screen.
set showmode

" Show line
set showcmd

" Show matching words during search.
set showmatch

" Use highlight when doing search
set hlsearch

" Set the commands to save in the hostory default number is 20.
set history=1000

" Enanle auto complete menu after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" There are certain files that we would never want to edit wit vim.
" Wildmenu will ignore files with these extesions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Color Scheme
" This is my favourite color scheme
" So create 'color' directory inside the ~/.vim
" Run the command to download color schemeL: curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
" There are so may color schemes out there download as you like
" Explore other themes on: https://github.com/rafi/awesome-vim-colorschemes?tab=readme-ov-file
colorscheme molokai


" Load an indent file for the detected file type
filetype indent on

" Auto Indentation
set autoindent

" Allow Hidden buffers.
set hidden

" Rendering
set ttyfast

" Status bar configurations
" STATUS LINE ------------------------------------------------------------
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
