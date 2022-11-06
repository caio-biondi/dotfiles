" This code would go in ftplugin/tex.vim, and sets
" space as the leader leader key for `tex` filetype.
let maplocalleader = " "

 " Use Skim as the VimTeX PDF viewer
let g:vimtex_view_method = 'skim'

" Turn off VimTeX indentation
let g:vimtex_indent_enabled = 0

" Disable syntax conceal
let g:vimtex_syntax_conceal_disable = 1

" Disable some compilation warning messages
let g:vimtex_quickfix_ignore_filters = [
      \ 'LaTeX hooks Warning',
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \ 'LaTeX Warning: .\+ float specifier changed to',
      \ 'Package siunitx Warning: Detected the "physics" package:',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \ 'Fatal error occurred, no output PDF file produced!',
      \]

" Define a custom shortcut to trigger VimtexView
nmap <localleader>v <plug>(vimtex-view)

function! s:TexFocusVim() abort
  " Replace `TERMINAL` with the name of your terminal application
  " Example: execute "!open -a iTerm"  
  " Example: execute "!open -a Alacritty"
  silent execute "!open -a iTerm"
  redraw!
endfunction

augroup vimtex_event_focus
  au!
  au User VimtexEventViewReverse call s:TexFocusVim()

 "VimTeX highlight groups
hi texCmd guifg=#ad3da4 guibg=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
hi! link texMathEnvArgName texEnvArgName
hi! link texMathZone LocalIdent
hi! link texMathZoneEnv texMathZone
hi! link texMathZoneEnvStarred texMathZone
hi! link texMathZoneX texMathZone
hi! link texMathZoneXX texMathZone
hi! link texMathZoneEnsured texMathZone

 "Small tweaks
hi! link QuickFixLine Normal
hi! link qfLineNr Normal
hi! link EndOfBuffer LineNr
hi! link Conceal LocalIdent
