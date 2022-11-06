syntax on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set incsearch hlsearch
set colorcolumn=80
set nu relativenumber
set nowrap
set noswapfile nobackup
set cursorline
		
call plug#begin()
    Plug 'preservim/nerdtree' "File explorer

    Plug 'morhetz/gruvbox'

    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'vim-scripts/vim-gitgutter' "Gitgutter

    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'ryanoasis/vim-devicons'

    Plug 'scrooloose/nerdcommenter' "File explorer

    Plug 'christoomey/vim-tmux-navigator' "Tmux nav (not-working)
call plug#end()

set termguicolors
colorscheme gruvbox

""NERDTree
nnoremap <C-n> :NERDTree<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeGitStatusWithFlags = 1

"Rainbow brackets
au FileType c,cpp,objc,objcpp,tex call rainbow#load()

" Custom Silent command that will call redraw
command! -nargs=+ Silent
\   execute 'silent ! <args>'
\ | redraw!

:map <F5> :Silent pdflatex % && open -a Preview && open -a iTerm

