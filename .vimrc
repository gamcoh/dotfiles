filetype off
set nocompatible
set clipboard=unnamedplus
set nu
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set encoding=UTF-8
set termguicolors
set showcmd
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set notermguicolors

hi Normal guibg=NONE ctermbg=NONE

call plug#begin('~/.vim/plugged')
Plug 'sillybun/vim-repl'
Plug 'SamTebbs33/vim-exec'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-sensible'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:airline_theme='solarized'
let g:airline_solarized_bg='darker'
let g:repl_program = {
            \   'python': 'bpython',
            \   'default': 'zsh',
            \   'r': 'R',
            \   'lua': 'lua',
            \   'vim': 'vim -e',
            \   }
let g:repl_position=3

if (has('termguicolors'))
endif

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <leader><leader>r :REPLToggle<Cr>
map <silent> <c-p> <ESC> :Files<cr>

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--preview',
    \ '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)

