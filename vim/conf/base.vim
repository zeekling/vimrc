
set encoding=utf8

" scrooloose/nerdtree
let NERDTreeWinPos='left'
let NERDTreeWinSize=40
let NERDChristmasTree=0
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1

"autocmd VimEnter * NERDTree
map  :silent! NERDTreeToggle
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '.obj$', '.o$', '.so', '.egg$', '^.git$', '^.svn$', '^.hg$', '^node_modules$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"map <leader>n  :NERDTreeToggle<CR>
map <leader><F9> :NERDTreeToggle<CR>

" Xuyuanp/nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ "Unknown"   : "?"
			\ }

" majutsushi/tagbar
let g:tagbar_width=35
nmap <F8> :TagbarToggle<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.java,*.py,*.js,*.sql call tagbar#autoopen()
let g:tagbar_ctags_bin='/usr/bin/ctags'

" vim-airline/vim-airline
let g:airline#symbols = {}
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set t_Co=256
let g:airline_theme="dark_minimal"
let g:airline_symbols = {}
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_detect_modidied=1
let g:airline_detect_paste=1
set lazyredraw

" scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" 禁止检查java文件
"let g:syntastic_mode_map = {'mode': 'active', 'passive_filetypes': ['java'] }

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <Leader>en <Plug>(ale_next)
nmap <Leader>ep <Plug>(ale_previous)
nnoremap <Leader>ts :ALEToggle<CR>


"Valloric/YouCompleteMe
let g:ycm_warning_symbol = '>*'
let g:ycm_auto_trigger = 1
" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F4> :YcmDiags<CR>
inoremap <C-o>  <C-x><C-o>
let g:ycm_semantic_triggers = {
			\     'c' : ['->', '  ', '.', ' ', '(', '[', '&'],
			\     'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
			\     'perl' : ['->', '::', ' '],
			\     'php' : ['->', '::', '.'],
			\     'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
			\     'ruby' : ['.', '::'],
			\     'lua' : ['.', ':']
			\ }
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_always_populate_location_list = 1
set completeopt=longest,menu
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 0
let g:ycm_complete_in_strings = 1
let g:ycm_key_list_stop_completion = ['<CR>']
let g:ycm_use_ultisnips_completer = 1
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
if !empty(glob("~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"))
	let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
endif
let g:ycm_server_keep_logfiles = 1
":imap <S-tab> <c-x><c-o>
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_server_python_interpreter='/usr/bin/python3'


" jiangmiao/auto-pairs
let g:AutoPairsFlyMode = 1
" haya14busa/incsearch.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_root_markers = ['pom.xml', '.p4ignore']
set wildignore+=*/tmp/*,*.so,*.swp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/]\.(git|hg|svn)$',
			\ 'file': '\v\.(exe|so|dll)$',
			\ 'link': 'some_bad_symbolic_links',
			\ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_switch_buffer = 'et'
if executable('ag')
	" Use Ag over Grep
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files.
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	" Ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif
let g:ctrlp_funky_matchtype = 'path'
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions = ['funky']
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)


" honza/vim-snippets
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"

" sjl/gundo.vim
"noremap <leader>h :GundoToggle<CR>
noremap <leader>ut :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" thinca/vim-quickrun
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

" mhinz/vim-startify
let g:startify_custom_header=[
		\'     ________   _______  _______  __  ___  __       __  .__   __.   _______',
		\'    |       /  |   ____||   ____||  |/  / |  |     |  | |  \ |  |  /  _____|',
		\'     ---/  /   |  |__   |  |__   |     /  |  |     |  | |   \|  | |  |  __',
		\'       /  /    |   __|  |   __|  |    <   |  |     |  | |  .    | |  | |_ |',
		\'      /  /----.|  |____ |  |____ |  .  \  |  `----.|  | |  |\   | |  |__| |',
		\'     /________||_______||_______||__|\__\ |_______||__| |__| \__|  \______|']
let g:startify_custom_footer=['结尾', '    不想看到你']
" ryanoasis/vim-devicons
let g:webdevicons_enable_nerdtree = 1 " 我的电脑上显示有点问题
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

let g:prepare_code_plugin_path = expand($HOME . "/.vim/plugged/prepare-code")
set cc=120
