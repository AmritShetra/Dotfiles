" --------------------------------------
" General settings
" --------------------------------------

" File detection
filetype plugin indent on
syntax on

set number			" Numbered lines
set mouse=a			" Enable mouse usage
set laststatus=2		" Show status line always
set noshowmode			" Hide duplicate status (when using lightline)

" --------------------------------------
" NERDTree
" --------------------------------------

" Open NERDTree when Vim starts & put cursor on file instead of tree
autocmd vimenter * NERDTree | wincmd p

" Close Vim if only file open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

