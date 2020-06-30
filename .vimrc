" File detection.
filetype plugin indent on
syntax on


set number			" Numbered lines.
set mouse=a			" Enable mouse usage.


" https://stackoverflow.com/questions/24808932/vim-open-nerdtree-and-move-the-cursor-to-the-file-editing-area/24809018
autocmd vimenter * NERDTree | wincmd p

" Close Vim if only window left open is NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

