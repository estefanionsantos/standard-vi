
set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on

let php_special_vars = 0

" set makeprg=php\ -1\ %
" set errorformat=%m\ in\ %f\ on\ line\ %1
iab @@ estefanions@gmail.com
iab ww http://estefanio.com.br

let g:tabular_loaded = 1

"set foldmethod=indent
"set foldminlines=5

autocmd FileType php    	setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python     setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml        setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css        setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType c          setlocal omnifunc=ccomplete#Complete
autocmd FileType cpp        setlocal omnifunc=omni#cpp#complete#Main
autocmd FileType hpp        setlocal omnifunc=omni#cpp#complete#Main
autocmd FileType ruby       setlocal omnifunc=rubycomplete#Complete


" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

map ,u :source /etc/vim/vimrc<CR>:echo " Done! vimrc file reloaded!"<CR>

" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'

" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1

" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1

" width of window
let Tlist_WinWidth = 40

" close tlist when a selection is made
let Tlist_Close_On_Select = 1


syntax enable 
set regexpengine=1

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

let g:acp_ignorecaseOption = 0 " ignore Case 0|1
let g:acp_enableAtStartup = 0 " auto popup 0|1




inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>


noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>


"autocmd BufRead *.* norm zR

set completeopt=longest,menuone




"autocmd BufRead,BufNewFile *.php set filetype=php.zuniphp
"autocmd FileType php  set tags^=~/www/tags/framework/zuniphp

" -------------------------------------------------
" config syntax html5
" -------------------------------------------------
"
"Disable event-handler attributes support:
let g:html5_event_handler_attributes_complete = 0

"Disable RDFa attributes support:
let g:html5_rdfa_attributes_complete = 0

"Disable microdata attributes support:
let g:html5_microdata_attributes_complete = 0

"Disable WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 0








if has("autocmd")

autocmd BufEnter *.phtml set syn=php    " Files found ZendFramework
autocmd BufEnter *.ctp set syn=php      " Files found CackePHP
autocmd BufRead,BufNewFile,BufReadPost *.php set filetype=php.html
autocmd BufRead,BufNewFile,BufReadPost *.cpp set filetype=cpp.c
autocmd BufRead,BufNewFile,BufReadPost *.twig set filetype=twig.html 
endif


inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>








" -------------------------------------------------
" ctags PHP
" -------------------------------------------------
"
nmap <F4> :!ctags -R --PHP-kinds=+cf --fields=+aimS --languages=php .<CR>

let php_sql_query=1
let php_htmlInStrings=1

let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_enhance_jump_to_definition = 1
let g:phpcomplete_add_class_extensions = ['mongo']
let g:phpcomplete_add_function_extensions = ['mongo']
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1
let g:phpcomplete_remove_function_extensions = ['xslt_php_4']
let g:phpcomplete_remove_constant_extensions = ['xslt_php_4']





map ,w :w!<cr>
map ,W :wa!<cr>

noremap <leader>w :wa!<cr>
inoremap <leader>w <c-o>:wa!<cr>






" -------------------------------------------------
" FuzzyFinder
" -------------------------------------------------
"
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400

map ,f :FufFile<cr>
map ,b :FufBuffer<cr>
map ,t :FufTag<cr>

" -------------------------------------------------






cab W w|cab Q q|cab B b
cab LS ls|cab Ls ls|cab lS ls
cab PWD pwd|cab Pwd pwd
cab Wq wq|cab wQ wq|cab WQ wq|cab Wa wa|cab WA wa|cab wA wa
cab WALL wall|cab Wall wall|cab wALL wall
cab QALL qall|cab Qall qall|cab qALL qall
cab WQALL wqall|cab wQALL wqall|cab Wqall wqall
cab BN bn|cab Bn bn|cab bN bn
cab BD bd|cab Bd bd|cab bD bd

" -------------------------------------------------
" show/hide the NERDTree
" -------------------------------------------------
"
cab ntree NERDTreeToggle|cab NTREE NERDTreeToggle
cab Ntree NERDTreeToggle|cab nTREE NERDTreeToggle
cab nerdTree NERDTreeToggle|cab NERDTREE NERDTreeToggle
cab nerdtree NERDTreeToggle
cab ntreeo NERDTree|cab ntreec NERDTreeClose
cab ntreeopen NERDTree|cab ntreeclose NERDTreeClose
map <C-n> :NERDTreeToggle<CR>

" ------------------------------------------------- "


" TComment
cab tcomment TComment

"learing the buffer search 
cab hlclear let @/=''

" Highlight word under the cursor
cab hlword let @/="<C-r><C-w>"

cab strip_tags %s#<[^>]\+>##g

set ai              " auto-identacao (set autoindent)
set ci              " gira em torno de C recuo stilo (set cindent)
set shiftwidth=4    " creates 4 spaces in the tab
set tabstop=4       " changes the width of tab
set softtabstop=4   " option to cause <Tab> and <BS> to the correct number of spaces 
set expandtab       " creates spaces instead of tab
set sm              " shows the beginning of a new closed block {},[], () (set showmatch)
set nu              " numbered lines (set number)
set is              " increases search (set incrementedsearch)
set hls             " Highlight search (set higlightedsearch)
set scs             " considers uppercase of lowercase (set smartcase )
set hidden          " Hide buffers when they are abandoned
set nobackup        " no backup
set noswapfile      " no swap file
set nowritebackup   " no write backup
set mouse=a         " Enable mouse usage (all modes)
set background=dark " background
set showcmd         " Show (partial) command in status line.
set ruler           " ruler
set linebreak       " does not share the word EOL
set visualbell      " disable beep



set cul
hi cursorline cterm=NONE ctermbg=black guibg=dargray



