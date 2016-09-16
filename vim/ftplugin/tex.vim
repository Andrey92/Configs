" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Remap for European character conflict
imap <C-l> <Plug>Tex_LeftRight
imap <buffer> <C-i>it <Plug>Tex_InsertItemOnThisLine
