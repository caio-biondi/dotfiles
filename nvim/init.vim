syntax on

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set incsearch hlsearch
set colorcolumn=80
set nu relativenumber
set nowrap
set noswapfile nobackup
set cursorline

call plug#begin()

    Plug 'arzg/vim-colors-xcode'

    Plug 'Mofiqul/vscode.nvim'

    Plug 'preservim/nerdtree'

    Plug 'Xuyuanp/nerdtree-git-plugin'

    Plug 'ryanoasis/vim-devicons'

    Plug 'scrooloose/nerdcommenter'

    Plug 'frazrepo/vim-rainbow'
    
    Plug 'christoomey/vim-tmux-navigator'

    Plug 'lervag/vimtex'

    Plug 'sirver/ultisnips'

    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

let g:python3_host_prog = '/usr/local/bin/python3.10'

 "italic comments
 augroup vim-colors-xcode
    autocmd!
augroup END

autocmd vim-colors-xcode ColorScheme * hi Comment        cterm=italic gui=italic
autocmd vim-colors-xcode ColorScheme * hi SpecialComment cterm=italic gui=italic

set termguicolors
colorscheme xcodedark

lua << END
require('lualine').setup({
    options = {
        -- ...
        theme = 'auto',
        -- ...
    },
})
END

nnoremap <C-t> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

au FileType c,cpp,objc,objcpp call rainbow#load()

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeGitStatusWithFlags = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" This code should go in your vimrc or init.vim
let g:UltiSnipsListSnippets="<C-R>"
let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']  " using Neovim

