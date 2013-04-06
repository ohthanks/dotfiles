""*****************************************
" VIM RC , OH HELLO , joefranks@gmail.com "
" "*****************************************

execute pathogen#infect()
execute pathogen#helptags() 
filetype plugin indent on

" set colors
set t_Co=256
set encoding=utf-8 " Necessary to show Unicode glyphs

"show invis
set list

"no word wrap
set nowrap

"set cursorcolumn
set cursorline

colorscheme herald 

"don't use local rc 
set noexrc

"force vim
set nocompatible

"highlighting on
syntax on

"linenumbers on
set number

"ignore case in search
set ignorecase
set smartcase

"search highlight
set hlsearch

"hl as type
set incsearch

let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0

"set scroll distance around cursor
set scrolloff=3

"set undo history
set history=1000

"tabspaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

set noexpandtab

"no auto indent!
" set nocindent
" set nosmartindent
" set noautoindent
" set indentexpr=
" filetype indent off
" filetype plugin indent off

"turn on background buffers
set hidden

"set listchars=tab:>-,eol:^
" "set hidden chars
" "set lcs=tab:\|\ ,eol:^,trail:.,nbsp:%
set lcs=tab:\.\ ,eol:^

"powerline setup
let g:Powerline_symbols = 'compatible'
"set figlet
let g:figletFont = 'larry3d'

"no bell
set visualbell

"set status line
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"set status for single window 
set laststatus=2

"set command line height
set cmdheight=1

"set 256 on, *SEEMS TO WORK, OH JEEZ*
if &term =~ "xterm"
	"256 color --
	let &t_Co=256
	" restore screen after quitting
	set t_ti=ESC7ESC[rESC[?47h t_te=ESC[?47lESC8
	if has("terminfo")
		let &t_Sf="\ESC[3%p1%dm"
		let &t_Sb="\ESC[4%p1%dm"
		else
		let &t_Sf="\ESC[3%dm"
		let &t_Sb="\ESC[4%dm"
	endif
endif

"autocmd bufwritepost ~/.vimrc source $MYVIMRC

"**************
"JSLINT********
"**************
"set makeprg=cat\ %\ \\\|\ /my/path/to/js\ /my/path/to/mylintrun.js\ %
"set errorformat=%f:%l:%c:%m

"remap leader
let mapleader =","

" mappings 

" ,+ l to toggle hidden 
nmap <leader>l :set list!<CR>
"
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap ; :CtrlPBuffer<CR>
map <C-b> :BufExplorer<CR>
map <leader>t :NERDTreeToggle<CR>
