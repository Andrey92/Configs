set nocp

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

"Set options for LaTeX
 set grepprg=grep\ -nH\ $*
 let g:tex_flavor='latex'

"Set interactive bash mode (needed in order to recognize aliases) 
set shell=/bin/bash\ -l
set shellcmdflag=-ic
set shellpipe=>%s\ 2>&1

"Tips for Java programming
autocmd Filetype java set cfu=VjdeCompletionFun
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
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

"If you would like to manually place cursors by moving your cursor above each location and pressing a keybinding, set the keybinding like so, setting {keys} as desired:
nnoremap <c-LeftMouse> :<c-u>call MultiCursorPlaceCursor()<cr>

"To actually utilize these manually placed cursors you will need to call another mapping:
nnoremap <c-i> :<c-u>call MultiCursorManual()<cr>

"If you would like to cancel manually placed cursors without utilizing them:
nnoremap <c-w> :<c-u>call MultiCursorRemoveCursors()<cr>

"You can also create cursors from visual mode:
xnoremap <c-LeftMouse> :<c-u>call MultiCursorVisual()<cr>

"Finally, you should set a keybinding to stop using multiple cursors (and fall back to the normal single cursor) like so:
let g:multicursor_quit = "<c-u>"


autocmd FileType c,cpp,html,css,javascript,php,java,ruby,python,perl,sh,xml let g:SuperTabDisabled=0

colorscheme mycolors "~/.vim/colors/mycolors.vim

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabNoCompleteAfter = [',', '\s', '\t', ';']
let g:SuperTabNoCompleteBefore = ['[a-zA-Z]']
"let g:SuperTabCompletionContexts = ['s:ContextText']
"let g:SuperTabCompletionContexts = ['s:ContextText']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
"let g:SuperTabContextDiscoverDiscovery = ['&completefunc:<c-x><c-u>', '&omnifunc:<c-x><c-o>']
