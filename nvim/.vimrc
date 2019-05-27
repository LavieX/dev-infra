" Vim Plug
call plug#begin('~/.local/share/nvim/plugged')

" Comment and Uncomment with Ctrl-C and Ctrl-X respectively
Plug 'sudar/comments.vim'

Plug 'dracula/vim', { 'as': 'dracula' }
:PlugInstall

" Initialize plugin system
call plug#end()

" Style
" set relativenumber    " relative line numbering
syntax on
syntax enable
color dracula
set hlsearch            " highlights searched text

" Tabs act as 2 spaces
set smartindent
set ts=2                " tabstop
set sw=2                " shiftwidth (how many cols text is indented with motion)
set sts=2               " softabstop
set et                  " expandtab
set backspace=2         " make backspace work like most other apps
tabdo windo set number              " normal line numbers

" Status Line
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%*

"au BufEnter /private/tmp/crontab.* setl backupcopy=yes
