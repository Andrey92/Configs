set background=dark
highlight clear
let g:colors_name="mycolors"

let save_cpo = &cpo
set cpo&vim

" basic highlight groups (:help highlight-groups) {{{

" text {{{

hi Normal	ctermfg=white		ctermbg=black		cterm=NONE

hi Folded	ctermfg=darkgray	ctermbg=lightgray	cterm=NONE

hi LineNr	ctermfg=darkgray	ctermbg=NONE		cterm=NONE

hi Directory	ctermfg=cyan		ctermbg=NONE		cterm=NONE

hi NonText	ctermfg=yellow		ctermbg=NONE		cterm=NONE

hi SpecialKey	ctermfg=green		ctermbg=NONE		cterm=NONE

hi SpellBad	ctermfg=white		ctermbg=darkred

hi SpellCap	ctermfg=white		ctermbg=darkblue

hi SpellLocal	ctermfg=black		ctermbg=cyan

hi SpellRare	ctermfg=white		ctermbg=darkmagenta   

hi DiffAdd	ctermfg=white		ctermbg=darkblue	cterm=NONE

hi DiffChange	ctermfg=black		ctermbg=darkmagenta	cterm=NONE

hi DiffDelete	ctermfg=black		ctermbg=red		cterm=bold

hi DiffText	ctermfg=white		ctermbg=green       	cterm=bold

" }}}
" borders / separators / menus {{{

hi FoldColumn	ctermfg=lightgray	ctermbg=darkgray	cterm=NONE

hi SignColumn	ctermfg=lightgray	ctermbg=darkgray	cterm=NONE

hi Pmenu	ctermfg=white		ctermbg=darkgray	cterm=NONE

hi PmenuSel	ctermfg=white		ctermbg=lightblue	cterm=NONE

hi PmenuSbar	ctermfg=black		ctermbg=black		cterm=NONE

hi PmenuThumb	ctermfg=gray		ctermbg=gray		cterm=NONE

hi StatusLine	ctermfg=black		ctermbg=white		cterm=bold

hi StatusLineNC	ctermfg=darkgray	ctermbg=white		cterm=NONE

hi WildMenu	ctermfg=white		ctermbg=darkblue	cterm=bold

hi VertSplit	ctermfg=white		ctermbg=white		cterm=NONE

hi TabLine	ctermfg=black		ctermbg=white		cterm=NONE

hi TabLineFill	ctermfg=black		ctermbg=white		cterm=NONE

hi TabLineSel	ctermfg=white		ctermbg=black		cterm=NONE

"hi Menu
"hi Scrollbar
"hi Tooltip

" }}}
" cursor / dynamic / other {{{

hi Cursor	ctermfg=black		ctermbg=white		cterm=NONE

hi CursorIM	ctermfg=black		ctermbg=white		cterm=reverse

hi CursorLine	ctermfg=NONE		ctermbg=NONE		cterm=NONE

hi CursorColumn	ctermfg=NONE		ctermbg=NONE		cterm=NONE

hi Visual	ctermfg=black		ctermbg=gray		cterm=NONE

hi IncSearch	ctermfg=white		ctermbg=yellow		cterm=NONE

hi Search	ctermfg=darkgray	ctermbg=yellow		cterm=NONE

hi MatchParen	ctermfg=white		ctermbg=lightblue	cterm=NONE

"hi VisualNOS

" }}}
" listings / messages {{{

hi ModeMsg	ctermfg=yellow		ctermbg=NONE		cterm=NONE

hi Title	ctermfg=red		ctermbg=NONE		cterm=bold

hi Question	ctermfg=darkyellow	ctermbg=NONE		cterm=NONE

hi MoreMsg	ctermfg=green		ctermbg=NONE		cterm=NONE

hi ErrorMsg	ctermfg=white		ctermbg=red		cterm=bold

hi WarningMsg	ctermfg=yellow		ctermbg=NONE		cterm=bold

" }}}

" }}}
" syntax highlighting groups (:help group-name) {{{

hi Comment	ctermfg=darkgrey	ctermbg=NONE	cterm=NONE

hi Constant	ctermfg=cyan		ctermbg=NONE	cterm=NONE

hi Number	ctermfg=yellow		ctermbg=NONE	cterm=NONE

hi String	ctermfg=darkred		ctermbg=NONE	cterm=NONE

hi Character	ctermfg=magenta		ctermbg=NONE	cterm=NONE

hi Boolean	ctermfg=yellow		ctermbg=NONE	cterm=bold

hi Identifier	ctermfg=yellow		ctermbg=NONE	cterm=NONE

hi Statement	ctermfg=green		ctermbg=NONE	cterm=bold

hi PreProc	ctermfg=darkgreen	ctermbg=NONE	cterm=NONE

hi Type		ctermfg=lightblue	ctermbg=NONE	cterm=bold

hi Special	ctermfg=darkmagenta	ctermbg=NONE	cterm=bold

hi Underlined	ctermfg=NONE		ctermbg=NONE	cterm=underline	term=underline 

hi Ignore	ctermfg=darkgray	ctermbg=NONE	cterm=NONE

hi Error	ctermfg=white		ctermbg=red	cterm=NONE

hi Todo		ctermfg=black		ctermbg=yellow	cterm=bold

" }}}

let &cpo = save_cpo

" vim: fdm=marker fdl=0

