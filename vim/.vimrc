" ----------opts--------------------
set nocompatible
set t_BE=
" Dont continute comments on the next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
let g:ycm_server_python_interpreter="/home/anand/miniconda2/bin/python2"
set pastetoggle=<F3>

" Setup options for ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Open new tabs
nnoremap <C-t> :tabnew<Space>
inoremap <C-t> <Esc>:tabnew<Space>

" F4: Toggle list (display unprintable characters).
nnoremap <F4> :set list!<CR>
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" ----------vim plug-----------------
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" A sensible set of defaults for vim
Plug 'tpope/vim-sensible'
" Adding support for gitgutter
Plug 'airblade/vim-gitgutter'
"Adding support for youcompleteme
Plug 'Valloric/YouCompleteMe'
"Adding support for editor config
Plug 'editorconfig/editorconfig-vim'
"Adding the onedark theme for vim
Plug 'joshdick/onedark.vim'
"Install CtrlP
Plug 'ctrlpvim/ctrlp.vim'
" Ending the plugin stuff
call plug#end()

" ----------spell check-------------
highlight clear SpellBad
highlight SpellBad cterm=underline ctermfg=186

" ----------gitgutter---------------
highlight GitGutterAdd ctermfg=40
highlight GitGutterChange ctermfg=220
highlight GitGutterDelete ctermfg=160
highlight GitGutterChangeDelete ctermfg=220

" ---------files--------------------
au BufRead,BufNewFile *.smk setfiletype python
au BufRead,BufNewFile Snakefile setfiletype python

" ---------colours------------------
syntax on
colorscheme onedark
" Colour the tab bar
hi TabLineFill cterm=none ctermfg=grey  ctermbg=cyan
hi TabLine     cterm=none ctermfg=white ctermbg=cyan
hi TabLineSel  cterm=none ctermfg=black ctermbg=white
" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
" From https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

