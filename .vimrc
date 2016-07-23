""*****************************************
" VIM RC , OH HELLO , joefranks@gmail.com "
" "*****************************************

execute pathogen#infect()
execute pathogen#helptags() 
filetype plugin on

" set colors
set t_Co=256
color dark
" colorscheme badwolf 
colorscheme inkpot 

set encoding=utf-8 " Necessary to show Unicode glyphs

set list " show invis chars
set nowrap " no word wrap
set cursorline " set cursorcolumn

set noexrc " don't use local rc 
set nocompatible " force vim

syntax on " highlighting on

set number " linenumbers on

" ignore case in search
set ignorecase
set smartcase

set hlsearch " search highlight

set incsearch " highlight as type

set scrolloff=3 " set scroll distance around cursor

set history=1000 " set undo history

" tabspaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"no auto indent!^
set nocindent
set nosmartindent
set noautoindent
filetype indent off
filetype plugin indent off

set lazyredraw " redraw only when needed
set showmatch " highlight matchign [{()}]

set hidden " turn on background buffers

" set backup temp folder, fix for double triggering file watchers
set backupdir=~/.vimtmp
set directory=~/.vimtmp

" set listchars=tab:>-,eol:^
" "set hidden chars
" "set lcs=tab:\|\ ,eol:^,trail:.,nbsp:%
set lcs=tab:\.\ ,eol:^

" powerline setup
"let g:Powerline_symbols = 'compatible'
let g:Powerline_symbols = 'fancy'
set rtp+=~/.dotfiles/.vim/bundle/powerline/powerline/bindings/vim

" set guifont =Sauce\ Code\ Powerline:h12
set guifont =Inconsolata-dz\ for\ Powerline

let g:figletFont = 'larry3d' " set figlet

set visualbell " no bell

" set status line - unused with powerline
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set laststatus=2 " set status for single window 
set cmdheight=1 " set command line height

" easytags setup

let g:easytags_file = '~/.vim/tags'

" mappings 

let mapleader ="\<space>" "remap leader
inoremap jk <ESC> "remap esc  

nnoremap <leader>u :GundoToggle<CR>

nnoremap <leader>s :mksession<CR>

" ,+ l to toggle hidden 
nmap <leader>l :set list!<CR>
"
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

map <leader>t :NERDTreeToggle<CR>
map <leader>! :call ToggleNumber()<CR>
nmap <leader>b :TagbarToggle<CR>

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
