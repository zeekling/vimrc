"
"  ________   _______  _______  __  ___  __       __  .__   __.   _______
" |       /  |   ____||   ____||  |/  / |  |     |  | |  \ |  |  /  _____|
" `---/  /   |  |__   |  |__   |  '  /  |  |     |  | |   \|  | |  |  __
"    /  /    |   __|  |   __|  |    <   |  |     |  | |  . `  | |  | |_ |
"   /  /----.|  |____ |  |____ |  .  \  |  `----.|  | |  |\   | |  |__| |
"  /________||_______||_______||__|\__\ |_______||__| |__| \__|  \______|
"
"              @author:zeekling<zeekling@zeekling.cn>
"
"set ruler
autocmd BufWritePre * :%s/\s\+$//e " 自动清除末行空格
set magic " 设置魔术
set backspace=indent,eol,start
set nocompatible
syntax on
set foldmethod=indent
set foldlevelstart=99
nnoremap <space> za
" begin 20171129 mod
"colorscheme gruvbox
colorscheme space-vim-dark
set background=dark
"colorscheme molokai
" end 20171129 mod
set smartindent shiftwidth=4
set shiftwidth=4 "缩进宽度4
set tabstop=4 "tab键宽度4
set softtabstop=4 "制表符宽度4
set cursorline
set nocursorcolumn
set fencs=utf-8,gb18030
set guifont=DroidSansMono\ Nerd\ Font\ 11
set encoding=utf8
set laststatus=2 " 显示光标当前位置
set number
set cursorline
set cursorcolumn
set hlsearch
highlight LeaderTab guifg=#666666
set nobackup
set noswapfile
match LeaderTab /^\t/
set wildmenu
set cursorline
" vim 透明
hi Normal  ctermfg=252 ctermbg=none
set autoindent
set smartindent
set noeb vb t_vb=
setlocal textwidth=120

" 设置加密方式
setlocal cm=blowfish2
let mapleader=','
let leader=','
let g:mapleader=','
let g:leader=','
" tab切换
map <leader>th :tabfirst<CR>
map <leader>tl :tablast<CR>
map <leader>tj :tabnext<CR>
map <leader>tk :tabprev<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprev<CR>
map <leader>te :tabedit<CR>
map <leader>td :tabclose<CR>
map <leader>tm :tabm<CR>

"buffer 切换
map <leader>bf :bf<CR>
map <leader>bn :bn<CR>
map <leader>bl :bl<CR>
map <leader>bf :bf<CR>
map <leader>bp :bp<CR>

" 快速关闭
map <leader>q :q<CR>
map <leader>wq :wq<CR>
map <leader>w :w<CR>
map <leader>mdp :MarkdownPreview<CR>
map <leader>s :shell<CR>

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn,.git,*.o,*~
"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能。
set lazyredraw

if filereadable(expand('~/.vim/conf/init.vim'))
	source ~/.vim/conf/init.vim
endif

set nocompatible
if filereadable(expand("~/.vim/vimrc"))
  source ~/.vim/vimrc
endif

set cc=120
