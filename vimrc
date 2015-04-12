
set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on

let php_special_vars = 0

" set makeprg=php\ -1\ %
" set errorformat=%m\ in\ %f\ on\ line\ %1
iab myAuthorName Estefanio NS <estefanions@gmail.com>
iab myFullName Estefanio Nunes dos Santos
iab myName Estefanio NS
iab myEmail estefanions@gmail.com
iab myWebsite http://estefanio.com.br

"set foldmethod=indent
"set foldminlines=5

autocmd FileType php 	    	setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python     setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml        setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType css        setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType c          setlocal omnifunc=ccomplete#Complete
autocmd FileType cpp        setlocal omnifunc=omni#cpp#complete#Main
autocmd FileType hpp        setlocal omnifunc=omni#cpp#complete#Main
autocmd FileType ruby       setlocal omnifunc=rubycomplete#Complete
"au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>



" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]



"autocmd BufRead *.* norm zR

set completeopt=longest,menuone

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


"autocmd BufRead,BufNewFile *.php set filetype=php.zuniphp
"autocmd FileType php  set tags^=~/www/tags/framework/zuniphp


if has("autocmd")

autocmd BufEnter *.phtml set syn=php    " Files found ZendFramework
autocmd BufEnter *.ctp set syn=php      " Files found CackePHP
autocmd BufRead,BufNewFile *.php set filetype=php.html

endif


inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>

map <F10> :w!<cr>
nmap <F12> :!ctags -R .<cr>
nmap <silent> <F4> :!ctags -R --languages=php .<CR>

noremap <leader>w :w!<cr>
noremap <leader>W :wa!<cr>

inoremap <leader>W <c-o>:wa!<cr>
inoremap <leader>w <c-o>:w!<cr>
map ,w :w!<cr>
map ,W :wa!<cr>


" FuzzyFinder
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400

nnoremap <Leader>f :FufFile<cr>
nnoremap <Leader>b :FufBuffer<cr>
nnoremap <Leader>t :FufTag<cr>

inoremap <leader>f <c-o>:FufFile<cr>
inoremap <leader>b <c-o>:FufBuffer<cr>
inoremap <leader>t <c-o>:FufTag<cr>

map ,f :FufFile<cr>
map ,b :FufBuffer<cr>
map ,t :FufTag<cr>



map <A-1> :b1<cr>
map <A-2> :b2<cr>
map <A-3> :b3<cr>
map <A-4> :b4<cr>
map <A-5> :b5<cr>
map <A-6> :b6<cr>
map <A-7> :b7<cr>
map <A-8> :b8<cr>
map <A-9> :b9<cr>
map <A-0> :b10<cr>
map <A-F1> :b11<cr>
map <A-F2> :b12<cr>
map <A-F3> :b13<cr>
map <A-F4> :b14<cr>
map <A-F5> :b15<cr>
map <A-F6> :b16<cr>
map <A-F7> :b17<cr>
map <A-F8> :b18<cr>
map <A-F9> :b19<cr>
map <A-F10> :b20<cr>
map <A-F11> :b21<cr>
map <A-F12> :b22<cr>
map <C-Q> :bwipeout<cr>
map <F5> :buffers<cr>

cab LS ls
cab Ls ls
cab lS ls
cab B b
cab BD bd
cab Bd bd
cab PWD pwd
cab Pwd pwd
cab W w
cab Q q
cab Wq wq
cab wQ wq
cab WQ wq
cab Wa wa
cab WA wa
cab wA wa
cab WALL wall
cab Wall wall
cab wALL wall
cab QALL qall
cab Qall qall
cab qALL qall
cab WQALL wqall
cab wQALL wqall
cab Wqall wqall

"NERDTree
cab ntree NERDTree
cab ntreec NERDTreeClose

" TComment
cab tcomment TComment

"learing the buffer search 
cab hlclear let @/=''

" Highlight word under the cursor
cab hlword let @/="<C-r><C-w>"

set ai                  " auto-identacao (set autoindent)
set ci                  " gira em torno de C recuo stilo (set cindent)
set expandtab           " creates spaces instead of tab 
set shiftwidth=4        " creates 4 spaces in the tab 
set tabstop=4           " changes the width of tab 
set sm                  " shows the beginning of a new closed block {},[], () (set showmatch)
set nu                  " numbered lines (set number)
set is                  " increases search (set incrementedsearch)
set hls                 " Highlight search (set higlightedsearch)
set is                  " ignores case sensitive (set ignorecase)
set scs                 " considers uppercase of lowercase (set smartcase )
set hidden              " Hide buffers when they are abandoned
set nobackup            " no backup
set noswapfile          " no swap file
set nowritebackup       " no write backup
set mouse=a             " Enable mouse usage (all modes)
set background=dark     " background
set showcmd	            " Show (partial) command in status line.
set ruler               " ruler
"set autowrite	        " Automatically save before commands like :next and :make

set cul
hi cursorline cterm=NONE ctermbg=black guibg=dargray





             
