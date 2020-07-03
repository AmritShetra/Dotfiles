" --------------------------------------
" Settings
" --------------------------------------

" File detection
filetype plugin indent on
syntax on

" General
set number			" Numbered lines.
set mouse=a			" Enable mouse usage.


" --------------------------------------
" NERDTree
" --------------------------------------

" Open NERDTree when Vim starts - put cursor on file instead of the tree.
autocmd vimenter * NERDTree | wincmd p

" Close Vim if only window left open is NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

