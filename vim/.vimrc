set nocp
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin on
filetype indent on

"Shortcut for pasting sources without auto-indent
set pastetoggle=<F2>

"Enable the use of the mouse
set mouse=a

"    '0 means that marks will not be saved
"    :0 means that command-line history will not be saved
"    <0 means that registsers will not be saved
"    @0 means that input-line history will not be saved
"    f0 means that marks will not be saved
"    no % means that the buffer list will not be saved
"    no / means that the search history will be saved
set viminfo='0,:0,f0,/0 "~/.viminfo
set number
"Set tabstop shiftwidth softtabstop
"default: 8
"set ts=4 sw=4 sts=4
nnoremap <F4> :set ts=4 sw=4 sts=4<CR>
nnoremap <F8> :set ts=8 sw=8 sts=8<CR>

"Window tabs shortcuts
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab>   :tabnext<CR>
nnoremap <C-t>   :tabnew<CR>

"Folding shortcuts
inoremap <F12> <C-O>zR
nnoremap <F12> zR
onoremap <F12> <C-C>zR
vnoremap <F12> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"Session options
"Commands -> :mksession ~/mysession.vim and :source ~/mysession.vim
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"Set options for LaTeX
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_FreezeImap=1

"Set interactive bash mode (needed in order to recognize aliases) 
set shell=/bin/bash\ -l
set shellcmdflag=-ic
set shellpipe=>%s\ 2>&1

"Tips for Java programming
autocmd Filetype java set cfu=VjdeCompletionFun
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
set completeopt-=preview
"autocmd CompleteDone * pclose
":inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
iab psvm public static void main(String[]args) { }<UP><END><BS><BS>
iab eqls public boolean equals(Object o) {<CR>if (!(o instanceof Type)) return false;<CR>if (o == this) return true;<CR>Type t = (Type)o;<CR>return ;<CR>}<UP>
iab sout System.out.println();<LEFT><LEFT>
iab serr System.err.println();<LEFT><LEFT>
":map [F5] [ESC]:!ant . > BUILD_LOG<CR>:e BUILD_LOG
"Compiling java
autocmd Filetype java set makeprg=javac\ -d\ ./bin\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%Csymbol\ \ :\ %m,%-C%.%#
map <F9> :make<Return>:copen<Return><Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

"autocmd FileType html,css,javascript,php,java,ruby,perl,sh,xml,tex,asm let g:loaded_youcompleteme = 1
autocmd FileType c,cpp,html,css,javascript,php,java,ruby,python,perl,sh,xml,tex,asm let g:SuperTabDisabled=0
autocmd FileType asm set ft=nasm
let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'h': 1, 'python': 1 }
let g:ycm_filetype_blacklist = { 'java' : 1 }
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_show_diagnostics_ui = 0

colorscheme mycolors "~/.vim/colors/mycolors.vim

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabNoCompleteAfter = [',', '\s', '\t', ';']
let g:SuperTabNoCompleteBefore = ['[a-zA-Z]']
let g:SuperTabCompletionContexts = ['s:ContextText']
let g:SuperTabCompletionContexts = ['s:ContextText']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ['&completefunc:<c-x><c-u>', '&omnifunc:<c-x><c-o>']
